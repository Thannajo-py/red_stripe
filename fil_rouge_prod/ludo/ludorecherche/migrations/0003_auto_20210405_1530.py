# Generated by Django 3.1.7 on 2021-04-05 13:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0002_auto_20210405_1453'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='game',
            name='add_ons',
        ),
        migrations.AddField(
            model_name='add_on',
            name='game',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='ludorecherche.game'),
        ),
    ]