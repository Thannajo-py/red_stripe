from django.db import models
from django.contrib.auth.models import User
from ludorecherche.models import Game, AddOn, MultiAddOn

# Create your models here.


class News(models.Model):  # Database table for storing article for presentation page
    title = models.CharField("titre", max_length=200, null=True, blank=True, unique=True)
    internal_img_url = models.CharField("url d'image locale", max_length=200, null=True, blank=True)
    external_img_url = models.CharField("url d'image externe", max_length=200, null=True, blank=True)
    internal_video_url = models.CharField("url de vidéo interne", max_length=200, null=True, blank=True)
    internal_video_codec = models.CharField("codec de vidéo interne", max_length=10, null=True, blank=True)
    external_video_url = models.TextField("url de vidéo externe", null=True, blank=True)
    audio_url = models.CharField("url de l'audio", max_length=200, null=True, blank=True)
    audio_codec = models.CharField("codec audio", max_length=200, null=True, blank=True)
    content = models.TextField("contenu de l'article", null=True, blank=True)
    created_at = models.DateTimeField('date de création', auto_now_add=True)

    class Meta:
        verbose_name = "article"
        verbose_name_plural = 'articles'


class Comment(models.Model): # Database table for storing user comment
    title = models.CharField("titre", max_length=200, null=True, blank=True)
    text_content = models.TextField("commentaire", null=True, blank=True)
    created_at = models.DateTimeField('date de création', auto_now_add=True)
    author = models.ForeignKey(User, verbose_name='auteur', on_delete=models.DO_NOTHING, null=True, blank=True)
    news = models.ForeignKey(News, verbose_name='nouvelles', on_delete=models.CASCADE, null=True, blank=True)
    game = models.ForeignKey(Game, verbose_name='jeu', on_delete=models.CASCADE, null=True, blank=True)
    add_on = models.ForeignKey(AddOn, verbose_name='extension', on_delete=models.CASCADE, null=True, blank=True)
    multi_add_on = models.ForeignKey(MultiAddOn, verbose_name='extension partagée',
                                     on_delete=models.CASCADE, null=True, blank=True)

    class Meta:
        verbose_name = 'commentaire'
