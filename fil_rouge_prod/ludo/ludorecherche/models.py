from django.db import models


from colorfield.fields import ColorField


class Designer(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)

    class Meta:
        verbose_name = "auteur"

    def __str__(self):
        return self.name


class Tag(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)

    class Meta:
        verbose_name = "étiquette"

    def __str__(self):
        return self.name


class Mechanism(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)

    class Meta:
        verbose_name = "mécanique associé"
        verbose_name_plural = "mécaniques associés"

    def __str__(self):
        return self.name


class Topic(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)

    class Meta:
        verbose_name = "Thème associé"
        verbose_name_plural = "Thèmes associés"

    def __str__(self):
        return self.name


class Difficulty(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)

    class Meta:
        verbose_name = "difficulté"

    def __str__(self):
        return self.name


class Artist(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)

    class Meta:
        verbose_name = "illustrateur"

    def __str__(self):
        return self.name


class Publisher(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)

    class Meta:
        verbose_name = "éditeur"

    def __str__(self):
        return self.name


class Language(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)

    class Meta:
        verbose_name = "langue"

    def __str__(self):
        return self.name


class PlayingMode(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)

    class Meta:
        verbose_name = "mode de jeu"
        verbose_name_plural = 'modes de jeux'

    def __str__(self):
        return self.name


class GameAddOnMultiAddOnCommonBase(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)
    english_name = models.CharField('nom anglais', max_length=200, unique=True,null=True, blank=True)
    player_min = models.IntegerField('nombre de joueur minimum', null=True, blank=True)
    player_max = models.IntegerField('nombre de joueur maximum', null=True, blank=True)
    playing_time = models.CharField('durée de jeu', max_length=50, null=True, blank=True)
    created_at = models.DateTimeField('date de création', auto_now_add=True)
    difficulty = models.ForeignKey(Difficulty, verbose_name='difficulté',
                                   on_delete=models.CASCADE, null=True, blank=True)
    picture = models.TextField("URL de l'image", blank=True)
    designers = models.ManyToManyField(Designer, verbose_name='Auteur', blank=True)
    artists = models.ManyToManyField(Artist, verbose_name='illustrateur', blank=True)
    publishers = models.ManyToManyField(Publisher, verbose_name='éditeur', blank=True)
    bgg_link = models.TextField("URL de BGG ou Tric Trac ", blank=True)
    playing_mode = models.ManyToManyField(PlayingMode, verbose_name='type', blank=True)
    language = models.ForeignKey(Language, verbose_name='langue', on_delete=models.CASCADE,
                                 null=True, blank=True)
    age = models.IntegerField('âge', blank=True, null=True)
    buying_price = models.IntegerField("prix d'achat", null=True, blank=True)
    stock = models.IntegerField("Quantité", default=1)

    class Meta:
        abstract = True


class Game(GameAddOnMultiAddOnCommonBase):
    max_time = models.IntegerField('temps de jeu maximum', null=True, blank=True)
    by_player = models.BooleanField('temps de jeu défini par joueur ?', default=False)
    tag = models.ManyToManyField(Tag, verbose_name='étiquettes', related_name='games', blank=True)
    mechanism = models.ManyToManyField(Mechanism, verbose_name='mécaniques associées', related_name='games', blank=True)
    topic = models.ManyToManyField(Topic, verbose_name='thèmes associés', related_name='games', blank=True)

    class Meta:
        verbose_name = "jeu"
        verbose_name_plural = "jeux"

    def __str__(self):
        return f'{self.name}'


class AddOn(GameAddOnMultiAddOnCommonBase):
    game = models.ForeignKey(Game, related_name='add_ons', verbose_name='jeu associé', on_delete=models.CASCADE,
                             null=True, blank=True)

    class Meta:
        verbose_name = "extension"

    def __str__(self):
        return f'{self.name}'


class MultiAddOn(GameAddOnMultiAddOnCommonBase):
    games = models.ManyToManyField(Game, related_name='multi_add_ons', verbose_name='jeux associés', blank=True)

    class Meta:
        verbose_name = "extension partagée"
        verbose_name_plural = "extensions  partagées"

    def __str__(self):
        return f'{self.name}'


class Theme(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)
    font_name = models.CharField('nom de la police', max_length=200, blank=True)
    font_link = models.TextField('lien de la police', blank=True)
    background_image = models.CharField('image de fond', max_length=200, blank=True)
    image_404 = models.CharField('image de page non trouvé', max_length=200, blank=True)
    title_404 = models.CharField("titre page non trouvé ", max_length=200, blank=True)
    text_404 = models.TextField("texte page non trouvé ", blank=True)
    image_500 = models.CharField('image de page erreur serveur', max_length=200, blank=True)
    title_500 = models.CharField("titre page erreur serveur ", max_length=200, blank=True)
    text_500 = models.TextField("texte page erreur serveur ", blank=True)
    list_all_title = models.CharField("titre liste globale ", max_length=200, blank=True)
    index_title = models.CharField('titre accueil', max_length=200, blank=True)
    index_text = models.TextField("texte Accueil ", blank=True)
    advanced_search_title = models.CharField('titre page de recherche avancée', max_length=200, blank=True)
    advanced_search_button_text = models.CharField('texte du bouton recherche avancée', max_length=200, blank=True)
    query_name = models.CharField('nom de la requête', max_length=200, blank=True)
    empty_query_text = models.TextField("texte requête vide ", blank=True)
    empty_query_image = models.CharField('image requête vide', max_length=200, blank=True)
    color_main = ColorField(default='#FF0000')
    color_2nd = ColorField(default='#FF0000')
    color_3rd = ColorField(default='#FF0000')
    color_4th = ColorField(default='#FF0000')

    class Meta:
        verbose_name = "Thème"

    def __str__(self):
        return f'{self.name}'


class Background(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)
    theme = models.OneToOneField(Theme, verbose_name="personnaliser l'interface", on_delete=models.DO_NOTHING,
                                 null=True, blank=True)

    class Meta:
        verbose_name = "Interface"

    def __str__(self):
        return f'{self.name}'
