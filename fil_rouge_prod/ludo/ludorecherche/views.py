from django.shortcuts import render, get_object_or_404
from .models import Game, Add_on, Multi_add_on, Designer, Artist, Publisher, PlayingMode, Tag
from random import randint
from .forms import SearchAdvForm


# Create your views here.
def index(request):
    games = Game.objects.order_by('-created_at')[:12]
    context = {
        'games': games
    }
    return render(request, 'ludorecherche/index.html', context)


def list_all(request):
    games = Game.objects.order_by('-created_at')
    context = {
        'games': games
    }
    return render(request, 'ludorecherche/list_all.html', context)


def detail(request, game_pk):
    game = get_object_or_404(Game, pk=game_pk)
    add_ons = Add_on.objects.filter(game__name__icontains=game.name)
    multi_add_ons = Multi_add_on.objects.filter(games__name__icontains=game.name)
    artists = [artist for artist in game.artists.all()]
    designers = [designer for designer in game.designers.all()]
    publishers = [publisher for publisher in game.publishers.all()]
    kinds = [kind for kind in game.playing_mode.all()]
    tags = [tag for tag in game.tag.all()]
    # give the difficulty symbol his color
    if game.difficulty:
        color = 'green' if game.difficulty.name.lower() in ['famille', 'ambiance'] \
            else 'orange' if game.difficulty.name.lower() in ['vétéran'] else 'red'
    else:
        color = 'blue'
    context = {
        'variable': game,
        'designers': designers,
        'artists': artists,
        'publishers': publishers,
        'color': color,
        'add_ons': add_ons,
        'kinds': kinds,
        'tags': tags,
        'multi_add_ons': multi_add_ons,
    }
    return render(request, 'ludorecherche/detail.html', context)


def add_on_detail(request, add_on_pk):
    add_on = get_object_or_404(Add_on, pk=add_on_pk)
    artists = [artist for artist in add_on.artists.all()]
    designers = [designer for designer in add_on.designers.all()]
    publishers = [publisher for publisher in add_on.publishers.all()]
    kinds = [kind for kind in add_on.playing_mode.all()]
    game = add_on.game
    # give the difficulty symbol his color
    if add_on.difficulty:
        color = 'green' if add_on.difficulty.name.lower() in ['famille', 'ambiance'] else 'orange'\
            if add_on.difficulty.name.lower() in ['vétéran'] else 'red'
    else:
        color = 'blue'
    context = {
        'variable': add_on,
        'designers': designers,
        'artists': artists,
        'publishers': publishers,
        'color': color,
        'kinds': kinds,
        'link_game': game,
    }
    return render(request, 'ludorecherche/detail.html', context)


def lucky(request):
    games = Game.objects.all()
    game = games[randint(0, len(games) - 1)]
    return detail(request, game.pk)


def search_page(request):
    form = SearchAdvForm(request.GET)
    context = {
        'form': form,
    }
    return render(request, 'ludorecherche/search_page.html', context)


def search(request):
    query = request.GET.get('query')
    if not query:
        games = Game.objects.all()
    else:
        games = []
        all_game = Game.objects.all()
        # checking if add_ons change the minimum or the maximum number of player of the game
        for game in all_game:
            designers = " ".join([designer.name.lower() for designer in game.designers.all()])
            artists = " ".join([artist.name.lower() for artist in game.artists.all()])
            publishers = " ".join([publisher.name.lower() for publisher in game.publishers.all()])
            kinds = " ".join([kind.name.lower() for kind in game.playing_mode.all()])
            tags = " ".join([tag.name.lower() for tag in game.tag.all()])
            minimum_player, maximum_player = extend_number_of_player(game)
            if minimum_player <= int(query) <= maximum_player:
                games += [game]
                continue
            # check if the game correspond to any of the criteria:
            if query.lower() in game.name.lower()\
                    or game.language and query.lower() in game.language.name.lower()\
                    or query.lower() in kinds\
                    or game.difficulty and query.lower() in game.difficulty.name.lower()\
                    or game.tag and query.lower() in tags\
                    or query.lower() in designers\
                    or query.lower() in artists\
                    or query.lower() in publishers:
                games += [game]
    title = f"Résultats pour la quête du {query}"
    context = {
        'games': games,
        'title': title
    }
    return render(request, 'ludorecherche/search_result.html', context)


def not_present_on_query_or_valid(element, group):
    try:
        return True if not group or element.name in group else False
    except AttributeError:
        return True


def extend_number_of_player(game):
    all_add_ons = Add_on.objects.filter(game__pk=game.pk)
    minimum_player = game.player_min if game.player_min else 0
    maximum_player = game.player_max if game.player_max else 999
    for add_on in all_add_ons:
        if add_on.player_min < minimum_player:
            minimum_player = add_on.player_min
        if add_on.player_max > maximum_player:
            maximum_player = add_on.player_max
    all_multi_add_ons = Multi_add_on.objects.filter(games__pk=game.pk)
    for add_on in all_multi_add_ons:
        if add_on.player_min < minimum_player:
            minimum_player = add_on.player_min
        if add_on.player_max > maximum_player:
            maximum_player = add_on.player_max
    return minimum_player, maximum_player


def all_tags_present(game, query_tags):
    game_tag_list = [tag.name for tag in game.tag.all()]
    # not valid is there is more tag in the query than in the game
    all_tags_in_game = False if len(query_tags) > len(game_tag_list) else True
    if all_tags_in_game:
        for tag in query_tags:
            if tag not in game_tag_list:
                # if any of the tags aren't present in the game it's false
                all_tags_in_game = False
                break
    return all_tags_in_game


def any_game_playing_mode_present(game, query_game_playing_mode):
    game_playing_mode_list = [playing_mode.name for playing_mode in game.playing_mode.all()]
    playing_mode_tag = False if query_game_playing_mode else True
    for game_playing_mode in game_playing_mode_list:
        if game_playing_mode in query_game_playing_mode:
            playing_mode_tag = True
            break
    return playing_mode_tag


def get_data_list_or_default(expression, value, default_value):
    try:
        partial_query = expression(value)
    except KeyError:
        partial_query = default_value
    return partial_query


def get_data_or_default(expression, value, default_value):
    try:
        partial_query = expression[value]
    except KeyError:
        partial_query = default_value
    return partial_query


def advanced_search(request):
    form = SearchAdvForm(request.GET)
    language = get_data_list_or_default(form.data.getlist, 'language', [])
    query_game_playing_mode = get_data_list_or_default(form.data.getlist, 'game_type_choice', [])
    difficulty = get_data_list_or_default(form.data.getlist, 'difficulty', [])
    age = get_data_or_default(form.data, 'age', "")
    age = age if age else 999
    name = get_data_or_default(form.data, 'name', "").lower()
    designer = get_data_or_default(form.data, 'designer', "").lower()
    artist = get_data_or_default(form.data, 'artist', "").lower()
    publisher = get_data_or_default(form.data, 'publisher', "").lower()
    tags = get_data_list_or_default(form.data.getlist, 'tag', [])
    playing_time = get_data_or_default(form.data, 'playing_time', "")
    time = True if playing_time else False
    player_number = get_data_or_default(form.data, 'player_number', "")
    player = True if player_number else False
    all_games = Game.objects.all()
    games = []
    # checking if add_ons change the minimum or the maximum number of player of the game
    for game in all_games:
        minimum_player, maximum_player = extend_number_of_player(game)
        game_designers = " ".join([designer.name.lower() for designer in game.designers.all()])
        game_artists = " ".join([artist.name.lower() for artist in game.artists.all()])
        game_publishers = " ".join([publisher.name.lower() for publisher in game.publishers.all()])
        # check the multi-requirement of the form
        if name in game.name.lower()\
                and artist in game_artists \
                and designer in game_designers \
                and publisher in game_publishers \
                and all_tags_present(game, tags)\
                and not_present_on_query_or_valid(game.difficulty, difficulty)\
                and (not player or player and minimum_player <= int(player_number) <= maximum_player) \
                and (not time or time and ((game.by_player and int(player_number) * game.max_time <= int(playing_time))
                or (not game.by_player and game.max_time <= int(playing_time)))) \
                and ((game.age and int(age) >= game.age) or not game.age)\
                and not_present_on_query_or_valid(game.language, language) \
                and any_game_playing_mode_present(game, query_game_playing_mode):
            games.append(game)
    title = "Résultats pour votre quête avancée"
    context = {
        'title': title,
        'games': games,
    }
    return render(request, 'ludorecherche/search_result.html', context)


# for seeing error 404 page while debug=True
def error404(request):
    return render(request, '404.html', )


# for seeing error 500 page while debug=True
def error500(request):
    return render(request, '500.html', )


def multi_add_on_detail(request, multi_add_on_pk):
    multi_add_on = get_object_or_404(Multi_add_on, pk=multi_add_on_pk)
    artists = [artist for artist in multi_add_on.artists.all()]
    designers = [designer for designer in multi_add_on.designers.all()]
    publishers = [publisher for publisher in multi_add_on.publishers.all()]
    kinds = [kind for kind in multi_add_on.playing_mode.all()]
    games = [game for game in multi_add_on.games.all()]
    # give the difficulty symbol his color
    if multi_add_on.difficulty:
        color = 'green' if multi_add_on.difficulty.name.lower() in ['famille', 'ambiance'] \
            else 'orange' if multi_add_on.difficulty.name.lower() in ['vétéran'] else 'red'
    else:
        color = 'blue'
    context = {
        'variable': multi_add_on,
        'designers': designers,
        'artists': artists,
        'publishers': publishers,
        'color': color,
        'kinds': kinds,
        'games': games,
    }
    return render(request, 'ludorecherche/detail.html', context)


def designer_game_list(request, designer_pk):
    designer = get_object_or_404(Designer, pk=designer_pk)
    games = Game.objects.filter(designers=designer)
    title = f"Liste des jeux de {designer.name}"
    context = {
        'games': games,
        'title': title,
    }
    return render(request, 'ludorecherche/search_result.html', context)


def artist_game_list(request, artist_pk):
    artist = get_object_or_404(Artist, pk=artist_pk)
    games = Game.objects.filter(artists=artist)
    title = f"Liste des jeux illustrés {artist.name}"
    context = {
        'games': games,
        'title': title,
    }
    return render(request, 'ludorecherche/search_result.html', context)


def publisher_game_list(request, publisher_pk):
    publisher = get_object_or_404(Publisher, pk=publisher_pk)
    games = Game.objects.filter(publishers=publisher)
    title = f"Liste des jeux publiés par {publisher.name}"
    context = {
        'games': games,
        'title': title,
    }
    return render(request, 'ludorecherche/search_result.html', context)


def game_type_game_list(request, game_type_pk):
    game_type = get_object_or_404(PlayingMode, pk=game_type_pk)
    games = Game.objects.filter(playing_mode=game_type)
    title = f"Liste des jeux de type {game_type.name}"
    context = {
        'games': games,
        'title': title,
    }
    return render(request, 'ludorecherche/search_result.html', context)


def tag_game_list(request, tag_pk):
    tag = get_object_or_404(Tag, pk=tag_pk)
    games = Game.objects.filter(tag=tag)
    title = f"Liste des jeux contenant l'étiquette {tag.name}"
    context = {
        'games': games,
        'title': title,
    }
    return render(request, 'ludorecherche/search_result.html', context)
