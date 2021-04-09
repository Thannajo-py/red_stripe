# Generated by Django 3.1.7 on 2021-04-07 13:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0015_auto_20210407_1532'),
    ]

    operations = [
        migrations.CreateModel(
            name='Difficulty',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200, unique=True, verbose_name='nom')),
            ],
            options={
                'verbose_name': 'difficulté',
            },
        ),
        migrations.AlterField(
            model_name='add_on',
            name='difficulty',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='add_ons', to='ludorecherche.difficulty', verbose_name='difficulté'),
        ),
        migrations.AlterField(
            model_name='game',
            name='difficulty',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='games', to='ludorecherche.difficulty', verbose_name='difficulté'),
        ),
    ]