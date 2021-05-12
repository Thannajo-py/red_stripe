# Generated by Django 3.1.7 on 2021-05-11 20:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludoaccueil', '0003_news_created_at'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='news',
            options={'verbose_name': 'article', 'verbose_name_plural': 'articles'},
        ),
        migrations.RemoveField(
            model_name='news',
            name='external_video_codec',
        ),
        migrations.AddField(
            model_name='news',
            name='title',
            field=models.CharField(blank=True, max_length=200, null=True, unique=True, verbose_name='titre'),
        ),
        migrations.AlterField(
            model_name='news',
            name='external_video_url',
            field=models.TextField(blank=True, null=True, verbose_name='url de vidéo externe'),
        ),
        migrations.AlterField(
            model_name='news',
            name='internal_video_codec',
            field=models.CharField(blank=True, max_length=10, null=True, verbose_name='codec de vidéo interne'),
        ),
    ]