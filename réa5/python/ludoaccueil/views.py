import datetime
import requests
import json
import time


from django.shortcuts import render
from django.db import transaction
from django.contrib.auth.decorators import login_required


from ludorecherche.models import Game, Background
from ludorecherche.views import detail, add_on_detail, multi_add_on_detail
from .models import News, Comment
from .forms import CommentForm
from ludogestion.models import Reservation
from ludogestion.forms import LogInForm


last_update = 0


def base(request):  # give the basic context of each page
    authentified = False
    form = LogInForm()
    if request.user.is_authenticated:
        authentified = True
    interface = Background.objects.get(name='Interface')
    context = {
        'interface': interface,
        'authentified': authentified,
        'form': form,
    }
    return context


class ShowItems:  # models for Game Board Atlas data
    def __init__(self, name, thumb_url, url):
        self.name = name
        self.image_url = thumb_url
        self.url = url


def news(request): # handle API Game Board Atlas requests
    try:
        selected = requests.get(
            f'https://api.boardgameatlas.com/api/search?{request}&client_id=JLBr5npPhV'
        )
        selected = json.loads(selected.text)
        selected = selected['games']
        selected = [ShowItems(game['name'], game['image_url'], game['url']) for game in selected]
        return selected
    except:
        return []


def accueil(request):  # Build the presentation page and send it back
    global last_update, last_news, last_kickstarters, most_popular
    context = base(request)
    form_comment = CommentForm()
    last_games = Game.objects.order_by('-created_at')[:5]
    articles = News.objects.all()
    actual_time = time.time()
    if actual_time > last_update + 3600 * 24 :  # for speeding up the website check news only once a day
        last_news = news('order_by=year_published&ascending=false&limit=5')
        most_popular = news('order_by=popularity&ascending=false&limit=5')
        last_kickstarters = news('kickstarter=true&limit=5')
        last_update = actual_time
        reservations = [reservation.delete() for reservation in Reservation.objects.all() if reservation.expired_at < datetime.datetime.now(datetime.timezone.utc)]
    context.update({
        'last_news': last_news,
        'last_kickstarters': last_kickstarters,
        'last_games': last_games,
        'most_popular': most_popular,
        'articles': articles,
        'type': 'news',
        'form_comment': form_comment,
    })
    return render(request, 'ludoaccueil/accueil.html', context)


@transaction.atomic
@login_required
def post_comment(request, type_id, type_name):
    context = base(request)
    if request.method == "POST":
        title = request.POST['title']
        content = request.POST['content']
        user = request.user
        comment = Comment.objects.create(title=title, text_content=content, author=user)
        if type_name == 'game':
            comment.game_id = type_id
            comment.save()
            return detail(request, type_id)
        elif type_name == 'addon':
            comment.add_on_id = type_id
            comment.save()
            return add_on_detail(request, type_id)
        elif type_name == 'multiaddon':
            comment.multi_add_on_id = type_id
            comment.save()
            return multi_add_on_detail(request, type_id)
        else:
            comment.news_id = type_id
            comment.save()
        return accueil(request)



