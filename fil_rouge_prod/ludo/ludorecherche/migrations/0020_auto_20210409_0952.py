# Generated by Django 3.1.7 on 2021-04-09 07:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0019_auto_20210408_1559'),
    ]

    operations = [
        migrations.AlterField(
            model_name='add_on',
            name='bgg_link',
            field=models.TextField(blank=True, verbose_name='URL de BGG ou Tric Trac '),
        ),
        migrations.AlterField(
            model_name='game',
            name='bgg_link',
            field=models.TextField(blank=True, verbose_name='URL de BGG ou Tric Trac '),
        ),
        migrations.AlterField(
            model_name='multi_add_on',
            name='bgg_link',
            field=models.TextField(blank=True, verbose_name='URL de BGG ou Tric Trac '),
        ),
    ]
