# Generated by Django 3.1.7 on 2021-04-07 08:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0009_auto_20210407_1055'),
    ]

    operations = [
        migrations.AlterField(
            model_name='game',
            name='age',
            field=models.IntegerField(blank=True, null=True, verbose_name='âge'),
        ),
        migrations.AlterField(
            model_name='game',
            name='playing_mode',
            field=models.ManyToManyField(blank=True, null=True, related_name='type', to='ludorecherche.PlayingMode', verbose_name='type'),
        ),
    ]