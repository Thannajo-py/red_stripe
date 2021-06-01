from django.db import models

# Create your models here.


class News(models.Model):  # Datbase table for storing article for presentation page
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