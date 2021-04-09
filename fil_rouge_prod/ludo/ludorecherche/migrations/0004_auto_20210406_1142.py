# Generated by Django 3.1.7 on 2021-04-06 09:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0003_auto_20210405_1530'),
    ]

    operations = [
        migrations.AddField(
            model_name='game',
            name='by_player',
            field=models.BooleanField(default=False, verbose_name='by_player?'),
        ),
        migrations.AddField(
            model_name='game',
            name='max_time',
            field=models.IntegerField(null=True, verbose_name='maximum time'),
        ),
        migrations.AlterField(
            model_name='game',
            name='player_max',
            field=models.IntegerField(null=True, verbose_name='nombre de joueurs maximum'),
        ),
        migrations.AlterField(
            model_name='game',
            name='player_min',
            field=models.IntegerField(null=True, verbose_name='nombre de joueurs minimum'),
        ),
    ]