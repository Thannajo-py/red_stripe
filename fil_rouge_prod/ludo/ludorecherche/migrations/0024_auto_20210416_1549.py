# Generated by Django 3.1.7 on 2021-04-16 13:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0023_auto_20210411_1113'),
    ]

    operations = [
        migrations.AlterField(
            model_name='game',
            name='designers',
            field=models.ManyToManyField(blank=True, to='ludorecherche.Designer', verbose_name='auteur'),
        ),
    ]