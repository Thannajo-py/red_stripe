import requests
import json
import datetime


from django.shortcuts import render
from django.core.exceptions import ObjectDoesNotExist
from django.db import transaction
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import permission_required


from ludorecherche.models import Background, Game, Designer, Artist, Publisher, AddOn, MultiAddOn, Mechanism, Topic,\
    Difficulty, PlayingMode, Language, Tag
from .forms import LogInForm, AddAGameForm
from .models import Reservation, ReservationRule
from ludorecherche.views import detail, add_on_detail, multi_add_on_detail


CLIENT_ID = "JLBr5npPhV"


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


@permission_required('ludorecherche.add_game') # decorator checking if user have right to add game
def find_a_game_page(request):  # base page for adding a game
    context = base(request)
    return render(request, 'ludogestion/find_a_game.html', context)


@permission_required('ludorecherche.add_game') # decorator checking if user have right to add game
def retrieve_game_from_api(request):  # build the answer API BGA page
    context = base(request)

    class GameAtlas:  # Storing BGA API answer
        def __init__(self, name, picture, id):
            self.name = name
            self.picture = picture
            self.id = id

    query = request.GET.get('query')
    api_answer = requests.get(f'https://api.boardgameatlas.com/api/search?name={query}&client_id={CLIENT_ID}')
    api_answer = json.loads(api_answer.text)
    api_answer = api_answer['games']
    api_answer = [GameAtlas(game['name'], game['thumb_url'], game['id']) for game in api_answer]
    context.update({
        'api_answer': api_answer,
    })
    return render(request, 'ludogestion/find_a_game.html', context)

def recall_api(type, api_answer, model):
    known = []
    unknown = []
    if type in api_answer and len(api_answer.get(type)) > 0:
        all_type_list = json.loads(requests.get(
            f'https://api.boardgameatlas.com/api/game/{type}?pretty=true&client_id={CLIENT_ID}').text).get(type)

        for member in api_answer.get(type):
            for m in all_type_list:
                if (member.get('id') == m.get('id')):
                    try:
                        model.objects.get(name=m.get('name'))
                        known.append(m.get('name'))
                    except ObjectDoesNotExist:
                        unknown.append(m.get('name'))
    return known, unknown


@permission_required('ludorecherche.add_game') # decorator checking if user have right to add game
def add_a_game(request, game_id):  # Register selected game from page to database if not present
    context = base(request)

    api_answer = requests.get(f'https://api.boardgameatlas.com/api/search?ids={game_id}&client_id={CLIENT_ID}')
    if api_answer.status_code != 200:
        context.update({
            'message': 'Erreur de Board Game Atlas',
        })
        return render(request, 'ludogestion/find_a_game.html', context)

    api_answer = json.loads(api_answer.text)
    if 'games' not in api_answer:
        context.update({
            'message': 'Erreur dans la requête de retour'
        })
    api_answer = api_answer.get('games')
    if len(api_answer) == 0:
        context.update({
            'message': 'Erreur de Board Game Atlas',
        })
        return render(request, 'ludogestion/find_a_game.html', context)
    api_answer = api_answer[0]

    try:
        if api_answer.get('type') is None:
            context.update({
                'message': 'type inconnu',
            })
            return render(request, 'ludogestion/find_a_game.html', context)
        elif api_answer.get('type') == 'game':
            Game.objects.get(name=api_answer.get('name'))
        elif api_answer.get('type') == 'expansion':
            try:
                AddOn.objects.get(name=api_answer.get('name'))
            except ObjectDoesNotExist:
                MultiAddOn.objects.get(name=api_answer.get('name'))
        context.update({
            'message': 'Ce jeu est déjà dans la ludothèque',
        })
        return render(request, 'ludogestion/find_a_game.html', context)

    except ObjectDoesNotExist:
        add_form = AddAGameForm(initial={
            'name': f"{api_answer.get('name')}",
            'english_name': f"{api_answer.get('name')}",
            'player_min': f"{api_answer.get('min_players')}",
            'player_max': f"{api_answer.get('max_players')}",
            'external_image': f"{api_answer.get('image_url')}",
            'thumb_image': f"{api_answer.get('thumb_url')}",
            'bgg_link': f"{api_answer.get('url')}",
            'age': f"{api_answer.get('min_age')}",
            'max_time': f"{api_answer.get('max_playtime')}",
            'stock': 1,
            'buying_price':0,
            'difficulty': 'Famille'
        })

        if api_answer['type'] == 'game':
            context.update({'type': 'game'})
            add_form.initial["type"] = "Jeu"
        else:
            add_form.initial["type"] = "Extension simple"
            context.update({'type': 'extension'})
        if 'primary_designer' in api_answer:
            try:
                Designer.objects.get(name=api_answer.get('primary_designer').get('name'))
                add_form.initial['designer'] = api_answer.get('primary_designer').get('name')
            except ObjectDoesNotExist:
                add_form.initial['add_designer'] = api_answer.get('primary_designer').get('name')

        artists_list = api_answer.get('artists')
        known_artist = []
        unknown_artist = []
        for artist in artists_list:
            try:
                Artist.objects.get(name=artist)
                known_artist.append(artist)
            except ObjectDoesNotExist:
                unknown_artist.append(artist)
        add_form.initial['add_artist'] = ", ".join(unknown_artist)
        add_form.initial['artist'] = known_artist

        if 'primary_publisher' in api_answer:
            try:
                Publisher.objects.get(name=api_answer.get('primary_publisher').get('name'))
                add_form.initial['publisher'] = api_answer.get('primary_publisher').get('name')
            except ObjectDoesNotExist:
                add_form.initial['add_publisher'] = api_answer.get('primary_publisher').get('name')

        (known_mechanics, unknown_mechanics) = recall_api('mechanics', api_answer, Mechanism)
        add_form.initial['mechanism'] = known_mechanics
        add_form.initial['add_mechanism'] = ", ".join(unknown_mechanics)
        (known_topics, unknown_topics) = recall_api('categories', api_answer, Topic)
        add_form.initial['topic'] = known_topics
        add_form.initial['add_topic'] = ", ".join(unknown_topics)

        context.update({
            'add_form': add_form,
        })
        return render(request, 'ludogestion/add_a_game.html', context)


def log_in_page(request):
    context = base(request)
    return render(request, 'ludogestion/login.html', context)


def log_in(request):  # Handle login attempt
    context = base(request)
    if request.method == "POST":
        username = request.POST['name']
        password = request.POST['password']
        context.update({
        'name': username,
        })
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            context['authentified'] = True
            return render(request, 'ludogestion/login_success.html', context)
        else:
            return render(request, 'ludogestion/login_failed.html', context)
    else:
        return render(request, 'ludogestion/login_failed.html', context)


def log_out(request):  # handle logout attempt
    context = base(request)
    context['authentified'] = False
    logout(request)
    return render(request, 'ludogestion/logout_success.html', context)


def add_reservation(request, type_name, type_id):
    user = request.user
    reservation_result = 2
    reservation_number = Reservation.objects.filter(user_id=user)
    if len(reservation_number) < ReservationRule.objects.get(pk=1).max_number:
        reservation_result = 1
        reservation = Reservation.objects.create()
        reservation.reservation = ReservationRule.objects.get(pk=1)
        reservation.expired_at = reservation.created_at + datetime.timedelta(reservation.reservation.duration)
        reservation.user_id = user
        if type_name == "game":
            reservation_object = Game.objects.get(pk=type_id)
            reservation.game_id = reservation_object
            reservation.save()
        elif type_name == "addon":
            reservation_object = AddOn.objects.get(pk=type_id)
            reservation.addon_id = reservation_object
            reservation.save()
        else:
            reservation_object = MultiAddOn.objects.get(pk=type_id)
            reservation.multiaddon_id = reservation_object
            reservation.save()
    return reservation_page(request, reservation_result)


def reservation_page(request, reservation_result=0):
    reservations = Reservation.objects.filter(user_id=request.user.id)
    context = base(request)
    context.update({
        "reservations": reservations,
        "reservation_result": reservation_result,
    })
    return render(request, 'ludogestion/reservation.html', context)


def remove_reservation(request, reservation_id):
    reservation = Reservation.objects.get(id=reservation_id)
    reservation.delete()
    return reservation_page(request)


def register_main(table, form):
    entry = table.objects.create(
        name=form.data.get("name", ""),
        english_name=form.data.get("name", ""),
        player_min=form.data.get('min_players', None),
        player_max=form.data.get('max_players', None),
        playing_time=form.data.get('playing_time'),
        picture=form.data.get('picture', None),
        external_image=form.data.get('external_image', None),
        bgg_link=form.data.get('bgg_link', None),
        age=form.data.get('min_age', None),
        max_time=form.data.get('max_playtime', None),
        stock=form.data.get('stock', None),
        buying_price=form.data.get('buying_price', None)
    )
    thumb_image = form.data.get('external_thumb_image', None)
    if thumb_image:
        entry.thumb_image = thumb_image
    add_list(entry, Designer, "designer", form, entry.designers)
    add_list(entry, Artist, "artist", form, entry.artists)
    add_list(entry, Publisher, "publisher", form, entry.publishers)
    entry.difficulty = Difficulty.objects.get(name=form.data.get("difficulty"))
    add_list(entry, PlayingMode, "playing_mode", form, entry.playing_mode)
    add_list(entry, Language, "language", form, entry.language)
    return entry


def add_list(entry, model, name, form, field):
    add_list = form.data.getlist(name, [])
    unknown = form.data.get(f"add_{name}", "")
    if unknown != "":
        for add_object in unknown.split(","):
            try:
                to_add = model.objects.get(
                    name=add_object
                )
            except ObjectDoesNotExist:
                to_add = model.objects.create(
                    name=add_object
                )
            if to_add is not None:
                field.add(to_add)
    for add_object in add_list:
        field.add(model.objects.get(name=add_object))


@transaction.atomic  # ensure all the register go well or cancel change in database
def register_a_game(request):
    context = base(request)
    add_form = AddAGameForm(request.POST)
    type = add_form.data.get("type", "")

    if not add_form.data.get("name"):
        context.update({
            'message': 'erreur nom invalide',
            'add_form': add_form
        })
        return render(request, 'ludogestion/add_a_game.html', context)
    if type == "Jeu":
        try:
            Game.objects.get(name=add_form.data.get("name"))
            context.update({
                'message': 'jeu déjà enregistré',
                'add_form': add_form
            })
            return render(request, 'ludogestion/add_a_game.html', context)
        except ObjectDoesNotExist:
            game = register_main(Game, add_form)
            add_list(game, Topic, "topic", add_form, game.topic)
            add_list(game, Tag, "tag", add_form, game.tag)
            add_list(game, Mechanism, "mechanism", add_form, game.mechanism)

            game.by_player = True if(add_form.data.get("by_player")) else False
            game.save()
    elif type == "Extension simple":
        try:
            AddOn.objects.get(name=add_form.data.get("name"))
            context.update({
                'message': 'extension déjà enregistré',
                'add_form': add_form
            })
            return render(request, 'ludogestion/add_a_game.html', context)
        except ObjectDoesNotExist:
            add_on = register_main(AddOn, add_form)
            if add_form.data.get("associated_game"):
                print(add_form.data.get('associated_game'))
                add_on.game = Game.objects.get(name=add_form.data.get('associated_game'))
                add_on.save()
    else:
        try:
            multi_add_on = MultiAddOn.objects.get(name=add_form.data.get("name"))
            context.update({
                'message': 'extension déjà enregistré',
                'add_form': add_form
            })
            return render(request, 'ludogestion/add_a_game.html', context)
        except ObjectDoesNotExist:
            multi_add_on = register_main(MultiAddOn, add_form)
        if add_form.data.get("associated_games"):
            [multi_add_on.games.add(Game.objects.get(name=game)) for game in add_form.data.getlist('associated_games')]
            multi_add_on.save()
    context.update({
        'message': 'Enregistrement réalisé avec succès',
    })
    return render(request, 'ludogestion/find_a_game.html', context)
