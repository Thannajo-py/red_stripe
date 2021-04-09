# Generated by Django 3.1.7 on 2021-04-05 09:17

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Add_on',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200, unique=True, verbose_name='nom')),
                ('player_min', models.IntegerField(null=True, verbose_name='nombre de joueur minimum')),
                ('player_max', models.IntegerField(null=True, verbose_name='nombre de joueur maximum')),
                ('playing_time', models.CharField(max_length=50, null=True, verbose_name='durée de jeu')),
                ('difficulty', models.CharField(max_length=50, null=True, verbose_name='niveau de difficulté')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='date de création')),
                ('picture', models.TextField(verbose_name="URL de l'image")),
                ('bgg_link', models.TextField(verbose_name='URL de BGG')),
            ],
            options={
                'verbose_name': 'jeux',
            },
        ),
        migrations.CreateModel(
            name='Artist',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200, unique=True, verbose_name='nom')),
            ],
            options={
                'verbose_name': 'illustrateur',
            },
        ),
        migrations.CreateModel(
            name='Designer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200, unique=True, verbose_name='nom')),
            ],
            options={
                'verbose_name': 'auteur',
            },
        ),
        migrations.CreateModel(
            name='Publisher',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200, unique=True, verbose_name='nom')),
            ],
            options={
                'verbose_name': 'éditeur',
            },
        ),
        migrations.CreateModel(
            name='Game',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200, unique=True, verbose_name='nom')),
                ('player_min', models.IntegerField(null=True, verbose_name='nombre de joueur minimum')),
                ('player_max', models.IntegerField(null=True, verbose_name='nombre de joueur maximum')),
                ('playing_time', models.CharField(max_length=50, null=True, verbose_name='durée de jeu')),
                ('difficulty', models.CharField(max_length=50, null=True, verbose_name='niveau de difficulté')),
                ('tag', models.CharField(max_length=200, null=True, verbose_name='étiquette')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='date de création')),
                ('picture', models.TextField(verbose_name="URL de l'image")),
                ('bgg_link', models.TextField(verbose_name='URL de BGG')),
                ('add_ons', models.ManyToManyField(blank=True, related_name='games', to='ludorecherche.Add_on')),
                ('artists', models.ManyToManyField(blank=True, related_name='games', to='ludorecherche.Artist')),
                ('designers', models.ManyToManyField(blank=True, related_name='games', to='ludorecherche.Designer')),
                ('publishers', models.ManyToManyField(blank=True, related_name='games', to='ludorecherche.Publisher')),
            ],
            options={
                'verbose_name': 'jeux',
            },
        ),
        migrations.AddField(
            model_name='add_on',
            name='artists',
            field=models.ManyToManyField(blank=True, related_name='add_ons', to='ludorecherche.Artist'),
        ),
        migrations.AddField(
            model_name='add_on',
            name='designers',
            field=models.ManyToManyField(blank=True, related_name='add_ons', to='ludorecherche.Designer'),
        ),
        migrations.AddField(
            model_name='add_on',
            name='publishers',
            field=models.ManyToManyField(blank=True, related_name='add_ons', to='ludorecherche.Publisher'),
        ),
    ]
