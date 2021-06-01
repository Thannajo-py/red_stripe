import requests
import json
import time


from django.shortcuts import render


from ludorecherche.models import Game, Background
from ludogestion.views import base
from .models import News


last_update = 0


class ShowItems:  # models for Game Board Atlas data
    def __init__(self, name, thumb_url, url):
        self.name = name
        self.image_url = thumb_url
        self.url = url


def news(request): # handle API Game Board Atlas requests
    selected = requests.get(
        f'https://api.boardgameatlas.com/api/search?{request}&client_id=JLBr5npPhV'
    )
    selected = json.loads(selected.text)
    selected = selected['games']
    selected = [ShowItems(game['name'], game['image_url'], game['url']) for game in selected]
    return selected


def accueil(request):  # Build the presentation page and send it back
    global last_update, last_news, last_kickstarters, most_popular
    context = base(request)
    last_games = Game.objects.order_by('-created_at')[:5]
    articles = News.objects.all()
    actual_time = time.time()
    if actual_time > last_update + 3600 * 24 :  # for speeding up the website check news only once a day
        last_news = news('order_by=year_published&ascending=false&limit=5')
        most_popular = news('order_by=popularity&ascending=false&limit=5')
        last_kickstarters = news('kickstarter=true&limit=5')
        last_update = actual_time
    context.update({
        'last_news': last_news,
        'last_kickstarters': last_kickstarters,
        'last_games': last_games,
        'most_popular': most_popular,
        'articles': articles,
    })
    return render(request, 'ludoaccueil/accueil.html', context)



