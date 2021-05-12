# Generated by Django 3.1.7 on 2021-05-11 20:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludoaccueil', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='news',
            name='comment',
        ),
        migrations.AddField(
            model_name='news',
            name='content',
            field=models.TextField(blank=True, null=True, verbose_name="contenu de l'article"),
        ),
        migrations.AddField(
            model_name='news',
            name='external_video_codec',
            field=models.CharField(blank=True, max_length=10, null=True, verbose_name='url de vidéo interne'),
        ),
        migrations.AddField(
            model_name='news',
            name='internal_video_codec',
            field=models.CharField(blank=True, max_length=10, null=True, verbose_name='url de vidéo interne'),
        ),
    ]
