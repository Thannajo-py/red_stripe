from django.db import models


# Create your models here.
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
        verbose_name = "type"

    def __str__(self):
        return self.name


class Game(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)
    player_min = models.IntegerField('nombre de joueurs minimum', null=True, blank=True)
    player_max = models.IntegerField('nombre de joueurs maximum', null=True, blank=True)
    playing_time = models.CharField('durée de jeu', max_length=50, null=True, blank=True)
    difficulty = models.ForeignKey(Difficulty, verbose_name='difficulté', related_name='games',
                                   on_delete=models.CASCADE, null=True, blank=True)
    max_time = models.IntegerField('temps de jeu maximum', null=True, blank=True)
    by_player = models.BooleanField('temps de jeu défini par joueur ?', default=False)
    tag = models.ManyToManyField(Tag, verbose_name='étiquettes', related_name='games', blank=True)
    created_at = models.DateTimeField('date de création', auto_now_add=True)
    picture = models.TextField("URL de l'image", blank=True)
    designers = models.ManyToManyField(Designer, verbose_name='auteur', related_name='games', blank=True)
    artists = models.ManyToManyField(Artist, verbose_name='illustrateur', related_name='games', blank=True)
    publishers = models.ManyToManyField(Publisher, verbose_name='éditeur', related_name='games', blank=True)
    bgg_link = models.TextField("URL de BGG ou Tric Trac ", blank=True)
    language = models.ForeignKey(Language, verbose_name='langue', related_name='langue', on_delete=models.CASCADE,
                                 null=True, blank=True)
    playing_mode = models.ManyToManyField(PlayingMode, verbose_name='type', related_name='type', blank=True)
    age = models.IntegerField('âge', blank=True, null=True)

    class Meta:
        verbose_name = "jeu"
        verbose_name_plural = "jeux"

    def __str__(self):
        return f'{self.name}'


class Add_on(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)
    player_min = models.IntegerField('nombre de joueur minimum', null=True, blank=True)
    player_max = models.IntegerField('nombre de joueur maximum', null=True, blank=True)
    playing_time = models.CharField('durée de jeu', max_length=50, null=True, blank=True)
    created_at = models.DateTimeField('date de création', auto_now_add=True)
    difficulty = models.ForeignKey(Difficulty, verbose_name='difficulté', related_name='add_ons',
                                   on_delete=models.CASCADE, null=True, blank=True)
    picture = models.TextField("URL de l'image", blank=True)
    designers = models.ManyToManyField(Designer, verbose_name='Auteur', related_name='add_ons', blank=True)
    artists = models.ManyToManyField(Artist, verbose_name='illustrateur', related_name='add_ons', blank=True)
    publishers = models.ManyToManyField(Publisher, verbose_name='éditeur', related_name='add_ons', blank=True)
    bgg_link = models.TextField("URL de BGG ou Tric Trac ", blank=True)
    game = models.ForeignKey(Game, related_name='add_ons', verbose_name='jeu associé', on_delete=models.CASCADE,
                             null=True, blank=True)
    playing_mode = models.ManyToManyField(PlayingMode, verbose_name='type', related_name='add_type', blank=True)
    language = models.ForeignKey(Language, verbose_name='langue', related_name='add_langue', on_delete=models.CASCADE,
                                 null=True, blank=True)
    age = models.IntegerField('âge', blank=True, null=True)

    class Meta:
        verbose_name = "extension"

    def __str__(self):
        return f'{self.name}'


class Multi_add_on(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)
    player_min = models.IntegerField('nombre de joueur minimum', null=True, blank=True)
    player_max = models.IntegerField('nombre de joueur maximum', null=True, blank=True)
    playing_time = models.CharField('durée de jeu', max_length=50, null=True, blank=True)
    created_at = models.DateTimeField('date de création', auto_now_add=True)
    difficulty = models.ForeignKey(Difficulty, verbose_name='difficulté', related_name='multi_add_ons',
                                   on_delete=models.CASCADE, null=True, blank=True)
    picture = models.TextField("URL de l'image", blank=True)
    designers = models.ManyToManyField(Designer, verbose_name='Auteur', related_name='multi_add_ons', blank=True)
    artists = models.ManyToManyField(Artist, verbose_name='illustrateur', related_name='multi_add_ons', blank=True)
    publishers = models.ManyToManyField(Publisher, verbose_name='éditeur', related_name='multi_add_ons', blank=True)
    bgg_link = models.TextField("URL de BGG ou Tric Trac ", blank=True)
    games = models.ManyToManyField(Game, related_name='multi_add_ons', verbose_name='jeux associés', blank=True)
    playing_mode = models.ManyToManyField(PlayingMode, verbose_name='type', related_name='multi_add_type', blank=True)
    language = models.ForeignKey(Language, verbose_name='langue', related_name='multi_add_langue',
                                 on_delete=models.CASCADE,
                                 null=True, blank=True)
    age = models.IntegerField('âge', blank=True, null=True)

    class Meta:
        verbose_name = "extension partagée"
        verbose_name_plural = "extensions  partagées"

    def __str__(self):
        return f'{self.name}'
