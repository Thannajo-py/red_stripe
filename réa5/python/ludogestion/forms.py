from django import forms
from ludorecherche.models import Difficulty, Designer, Artist, Publisher, PlayingMode, Language, Tag, Mechanism, Topic, Game


def list_ordered(entry):
    return sorted([(element, element) for element in entry.objects.all()])


DIFFICULTY_CHOICE = list_ordered(Difficulty)
DESIGNERS = list_ordered(Designer)
ARTISTS = list_ordered(Artist)
PUBLISHERS = list_ordered(Publisher)
TYPE_CHOICE = [("Jeu", "Jeu"), ("Extension simple", "Extension simple"), ("Extension multiples", "Extension multiples")]
PLAYING_MODE_CHOICES = list_ordered(PlayingMode)
LANGUAGES_CHOICES = list_ordered(Language)
DIFFICULTY_CHOICES = list_ordered(Difficulty)
TAG_CHOICES = list_ordered(Tag)
MECHANISM_CHOICES = list_ordered(Mechanism)
TOPIC_CHOICES = list_ordered(Topic)
GAME_CHOICES = list_ordered(Game)


class LogInForm(forms.Form):  # the log in form
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control'}))


class AddAGameForm(forms.Form):  # add a game
    name = forms.CharField(label="nom", widget=forms.TextInput(), required=False)
    english_name = forms.CharField(label="nom anglais", widget=forms.TextInput(), required=False)
    designer = forms.MultipleChoiceField(label="auteurs", choices=DESIGNERS, required=False)
    add_designer = forms.CharField(label="auteur non recensés", widget=forms.TextInput(), required=False)
    artist = forms.MultipleChoiceField(label="illustrateurs", choices=ARTISTS, required=False)
    add_artist = forms.CharField(label="illustrateurs non recensés", widget=forms.TextInput(), required=False)
    publisher = forms.MultipleChoiceField(label="éditeurs", choices=PUBLISHERS, required=False)
    add_publisher = forms.CharField(label="éditeurs non recensés", widget=forms.TextInput(), required=False)
    playing_time = forms.CharField(label="durée de jeu", widget=forms.TextInput(), required=False)
    player_min = forms.IntegerField(label="nombres de joueurs minimum", widget=forms.NumberInput(), required=False)
    player_max = forms.IntegerField(label="nombres de joueurs maximum", widget=forms.NumberInput(), required=False)
    age = forms.IntegerField(label="âge minimum", widget=forms.NumberInput(), required=False)
    language = forms.MultipleChoiceField(label="languages", choices=LANGUAGES_CHOICES, required=False)
    add_language = forms.CharField(label="langages non recensés", widget=forms.TextInput(), required=False)
    playing_mode = forms.MultipleChoiceField(label="mode de jeu", choices=PLAYING_MODE_CHOICES, required=False)
    add_playing_mode = forms.CharField(label="mode de jeu non recensés", widget=forms.TextInput(), required=False)
    difficulty = forms.ChoiceField(label="difficultée", widget=forms.Select(),
                                   choices=DIFFICULTY_CHOICES, required=False)
    tag = forms.MultipleChoiceField(widget=forms.SelectMultiple(attrs={'class': 'game-only'})
                                    , choices=TAG_CHOICES, required=False)
    add_tag = forms.CharField(label="tag non recensés",
                              widget=forms.TextInput(attrs={'class': 'game-only'}), required=False)
    mechanism = forms.MultipleChoiceField(widget=forms.SelectMultiple(attrs={'class': 'game-only'}),
                                          label="mécaniques de jeu", choices=MECHANISM_CHOICES, required=False)
    add_mechanism = forms.CharField(label="mécaniques de jeu non recensées",
                                    widget=forms.TextInput(attrs={'class': 'game-only'}), required=False)
    topic = forms.MultipleChoiceField(widget=forms.SelectMultiple(attrs={'class': 'game-only'}),
                                      label="thème", choices=TOPIC_CHOICES, required=False)
    add_topic = forms.CharField(label="thème non recensés",
                                widget=forms.TextInput(attrs={'class': 'game-only'}), required=False)
    picture = forms.CharField(label="url interne", widget=forms.TextInput(), required=False)
    external_image = forms.CharField(label="url externe", widget=forms.TextInput(), required=False)
    external_thumb_image = forms.CharField(label="nombres de joueurs minimum", widget=forms.TextInput(), required=False)
    bgg_link = forms.CharField(label="lien externe", widget=forms.TextInput(), required=False)
    buying_price = forms.IntegerField(label="prix d'achat", widget=forms.NumberInput(), required=False)
    stock = forms.IntegerField(label="quantitée", widget=forms.NumberInput(), required=False)
    max_time = forms.IntegerField(label="temps de jeu maximum", widget=forms.NumberInput(), required=False)
    by_player = forms.BooleanField(label="temps de jeu par joueur?", required=False,
                                   widget=forms.CheckboxInput(attrs={'class': 'game-only'}))
    type = forms.ChoiceField(widget=forms.Select(), choices=TYPE_CHOICE, required=False)
    associated_game = forms.ChoiceField(label="jeu associé", widget=forms.Select(attrs={'class': 'add-on-only'}),
                                        choices=GAME_CHOICES, required=False)
    associated_games = forms.MultipleChoiceField(widget=forms.SelectMultiple(attrs={'class': 'multi-add-on-only'}),
                                                 label="jeux associés", choices=GAME_CHOICES, required=False)
