from random import randint

from django.shortcuts import render, get_object_or_404


from .models import Game, AddOn, MultiAddOn, Designer, Artist, Publisher, PlayingMode, Tag, Topic,\
    Mechanism, Language, Background
from ludoaccueil.models import Comment
from .forms import SearchAdvForm
from ludogestion.forms import LogInForm
from ludoaccueil.forms import CommentForm
from ludogestion.models import Reservation


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
# Create your views here.
def index(request):
    context = base(request)
    games = Game.objects.order_by('-created_at')[:12]
    context.update({
        'games': games,
    })
    return render(request, 'ludorecherche/index.html', context)


def list_all(request):
    context = base(request)
    games = Game.objects.order_by('-created_at')
    context.update({
        'games': games,
    })
    return render(request, 'ludorecherche/list_all.html', context)


def common_detail(variable, context):
    form_comment = CommentForm()
    artists = [artist for artist in variable.artists.all()]
    designers = [designer for designer in variable.designers.all()]
    publishers = [publisher for publisher in variable.publishers.all()]
    languages = [language for language in variable.language.all()]
    playing_modes = [playing_mode for playing_mode in variable.playing_mode.all()]

    context.update({
        'designers': designers,
        'artists': artists,
        'publishers': publishers,
        'playing_modes': playing_modes,
        'languages': languages,
        'form_comment': form_comment,
    })
    return context


def detail(request, game_pk):  # Game detail
    context = base(request)
    game = get_object_or_404(Game, pk=game_pk)
    multi_add_ons = [multi_add_on for multi_add_on in game.multi_add_ons.all()]
    context = common_detail(game, context)
    add_ons = AddOn.objects.filter(game__name__icontains=game.name)
    comments = Comment.objects.filter(game__name__icontains=game.name)
    tags = [tag for tag in game.tag.all()]
    topics = [topic for topic in game.topic.all()]
    mechanisms = [mechanism for mechanism in game.mechanism.all()]
    reserved = Reservation.objects.filter(game=game_pk)
    stock = game.stock - len(reserved)
    # give the difficulty symbol his color
    if game.difficulty:
        color = 'green' if game.difficulty.name.lower() in ['famille', 'ambiance'] \
            else 'orange' if game.difficulty.name.lower() in ['vétéran'] else 'red'
    else:
        color = 'blue'
    context.update({
        'variable': game,
        'color': color,
        'add_ons': add_ons,
        'comments': comments,
        'type': 'game',
        'stock': stock,
        'multi_add_ons': multi_add_ons,
        'tags': tags,
        'mechanisms': mechanisms,
        'topics': topics,
    })
    return render(request, 'ludorecherche/detail.html', context)


def add_on_detail(request, add_on_pk):
    context = base(request)
    add_on = get_object_or_404(AddOn, pk=add_on_pk)
    context = common_detail(add_on, context)
    game = add_on.game
    comments = Comment.objects.filter(add_on__name__icontains=add_on.name)
    reserved = Reservation.objects.filter(addon=add_on_pk)
    stock = game.stock - len(reserved)
    # give the difficulty symbol his color
    if add_on.difficulty:
        color = 'green' if add_on.difficulty.name.lower() in ['famille', 'ambiance'] else 'orange'\
            if add_on.difficulty.name.lower() in ['vétéran'] else 'red'
    else:
        color = 'blue'
    context.update({
        'variable': add_on,
        'color': color,
        'link_game': game,
        'type': 'addon',
        'comments': comments,
        'stock':stock
    })
    return render(request, 'ludorecherche/detail.html', context)


def lucky(request):
    games = Game.objects.all()
    print(Game.objects.get(name="Pix").designers.all())
    game = games[randint(0, len(games) - 1)]
    return detail(request, game.pk)


def search_page(request):
    context = base(request)
    search_form = SearchAdvForm(request.GET)
    context.update({
        'search_form': search_form,
    })
    return render(request, 'ludorecherche/search_page.html', context)


def extend_number_of_player(game):  # check if some add_on extend the max or min number of player
    all_add_ons = AddOn.objects.filter(game__pk=game.pk)
    minimum_player = game.player_min if game.player_min else 0
    maximum_player = game.player_max if game.player_max else 999
    for add_on in all_add_ons:
        if add_on.player_min < minimum_player:
            minimum_player = add_on.player_min
        if add_on.player_max > maximum_player:
            maximum_player = add_on.player_max
    all_multi_add_ons = MultiAddOn.objects.filter(games__pk=game.pk)
    for add_on in all_multi_add_ons:
        if add_on.player_min < minimum_player:
            minimum_player = add_on.player_min
        if add_on.player_max > maximum_player:
            maximum_player = add_on.player_max
    return minimum_player, maximum_player


def search(request):  # handle basic nav search
    context = base(request)
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

            if query.isnumeric() and minimum_player <= int(query) <= maximum_player:
                games += [game]
                continue
            # check if the game correspond to any of the criteria:
            if query.lower() in game.name.lower()\
                    or game.language.name != None  and query.lower() in game.language.name.lower()\
                    or query.lower() in kinds\
                    or game.difficulty and query.lower() in game.difficulty.name.lower()\
                    or game.tag and query.lower() in tags\
                    or query.lower() in designers\
                    or query.lower() in artists\
                    or query.lower() in publishers:
                games += [game]
    title = f"Résultats pour {context['interface'].theme.query_name} du {query}"
    context.update({
        'games': games,
        'title': title
    })
    return render(request, 'ludorecherche/search_result.html', context)


def not_present_on_query_or_valid(element, group):  # check if field is blank or return data
    try:
        return True if not group or element.name in group else False
    except AttributeError:
        return True


def all_tags_present(game, query_tags):  # check if field is blank or return data
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


def any_game_playing_mode_present(game, query_game_playing_mode):  # check if field is blank or return data
    game_playing_mode_list = [playing_mode.name for playing_mode in game.playing_mode.all()]
    playing_mode_tag = False if query_game_playing_mode else True
    for game_playing_mode in game_playing_mode_list:
        if game_playing_mode in query_game_playing_mode:
            playing_mode_tag = True
            break
    return playing_mode_tag


def get_data_list_or_default(expression, value, default_value):  # check if field is blank or return data
    try:
        partial_query = expression(value)
    except KeyError:
        partial_query = default_value
    return partial_query


def get_data_or_default(expression, value, default_value):  # check if field is blank or return data
    try:
        partial_query = expression[value]
    except KeyError:
        partial_query = default_value
    return partial_query


def advanced_search(request):  # search through database for specific games with multifactorial criteria
    context = base(request)
    form = SearchAdvForm(request.POST)
    language = get_data_or_default(form.data, 'language', "").lower()
    query_game_playing_mode = get_data_list_or_default(form.data.getlist, 'playing_mode_choice', [])
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
        game_languages = " ".join([language.name.lower() for language in game.language.all()])
        # check the multi-requirement of the form
        if name in game.name.lower()\
                and artist in game_artists \
                and designer in game_designers \
                and publisher in game_publishers \
                and all_tags_present(game, tags)\
                and not_present_on_query_or_valid(game.difficulty, difficulty)\
                and (not player or player and minimum_player <= int(player_number) <= maximum_player) \
                and (not time or time and ((game.by_player and int(player_number) * game.max_time <= int(playing_time))
                                    or (not game.by_player and game.max_time and game.max_time <= int(playing_time)))) \
                and ((game.age and int(age) >= game.age) or not game.age)\
                and language in game_languages \
                and any_game_playing_mode_present(game, query_game_playing_mode):
            games.append(game)
    title = f"Résultats pour {context['interface'].theme.query_name} avancée"
    context.update({
        'title': title,
        'games': games,
    })
    return render(request, 'ludorecherche/search_result.html', context)


def multi_add_on_detail(request, multi_add_on_pk):
    context = base(request)
    multi_add_on = get_object_or_404(MultiAddOn, pk=multi_add_on_pk)
    context = common_detail(multi_add_on, context)
    games = [game for game in multi_add_on.games.all()]
    comments = Comment.objects.filter(multi_add_on__name__icontains=multi_add_on.name)
    reserved = Reservation.objects.filter(multiaddon=multi_add_on_pk)
    stock = multi_add_on.stock - len(reserved)
    # give the difficulty symbol his color
    if multi_add_on.difficulty:
        color = 'green' if multi_add_on.difficulty.name.lower() in ['famille', 'ambiance'] \
            else 'orange' if multi_add_on.difficulty.name.lower() in ['vétéran'] else 'red'
    else:
        color = 'blue'
    context.update({
        'variable': multi_add_on,
        'color': color,
        'games': games,
        'type': 'multiaddon',
        'comments': comments,
        'stock': stock,
    })
    return render(request, 'ludorecherche/detail.html', context)


def designer_game_list(request, designer_pk):
    context = base(request)
    designer = get_object_or_404(Designer, pk=designer_pk)
    games = Game.objects.filter(designers=designer)
    title = f"Liste des jeux de {designer.name}"
    context.update({
        'games': games,
        'title': title,
    })
    return render(request, 'ludorecherche/search_result.html', context)


def artist_game_list(request, artist_pk):
    context = base(request)
    artist = get_object_or_404(Artist, pk=artist_pk)
    games = Game.objects.filter(artists=artist)
    title = f"Liste des jeux illustrés {artist.name}"
    context.update({
        'games': games,
        'title': title,
    })
    return render(request, 'ludorecherche/search_result.html', context)


def publisher_game_list(request, publisher_pk):
    context = base(request)
    publisher = get_object_or_404(Publisher, pk=publisher_pk)
    games = Game.objects.filter(publishers=publisher)
    title = f"Liste des jeux publiés par {publisher.name}"
    context.update({
        'games': games,
        'title': title,
    })
    return render(request, 'ludorecherche/search_result.html', context)


def playing_mode_game_list(request, playing_mode_pk):
    context = base (request)
    playing_mode = get_object_or_404(PlayingMode, pk=playing_mode_pk)
    games = Game.objects.filter(playing_mode=playing_mode)
    title = f"Liste des jeux de type {playing_mode.name}"
    context.update({
        'games': games,
        'title': title,
    })
    return render(request, 'ludorecherche/search_result.html', context)


def tag_game_list(request, tag_pk):
    context = base(request)
    tag = get_object_or_404(Tag, pk=tag_pk)
    games = Game.objects.filter(tag=tag)
    title = f"Liste des jeux contenant l'étiquette {tag.name}"
    context.update({
        'games': games,
        'title': title,
    })
    return render(request, 'ludorecherche/search_result.html', context)


def topic_game_list(request, topic_pk):
    context = base(request)
    topic = get_object_or_404(Topic, pk=topic_pk)
    games = Game.objects.filter(topic=topic)
    title = f"Liste des jeux contenant l'étiquette {topic.name}"
    context.update({
        'games': games,
        'title': title,
    })
    return render(request, 'ludorecherche/search_result.html', context)


def mechanism_game_list(request, mechanism_pk):
    context = base(request)
    mechanism = get_object_or_404(Mechanism, pk=mechanism_pk)
    games = Game.objects.filter(mechanism=mechanism)
    title = f"Liste des jeux contenant l'étiquette {mechanism.name}"
    context.update({
        'games': games,
        'title': title,
    })
    return render(request, 'ludorecherche/search_result.html', context)


def handler404(request, exception):  # redirect 404 error
    context = base(request)
    return render(request, '404.html', context, status=404)


def handler500(request):  # redirect 500 error
    context = base(request)
    return render(request, '500.html', context, status=500)


def error_404(request):  # seeing 404 page while debug true
    context = base(request)
    return render(request, '404.html', context)


def error_500(request):  # seeing 500 page while debug true
    context = base(request)
    return render(request, '500.html', context)


