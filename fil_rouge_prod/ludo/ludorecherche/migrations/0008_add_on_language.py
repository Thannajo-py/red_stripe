# Generated by Django 3.1.7 on 2021-04-07 08:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0007_auto_20210407_1026'),
    ]

    operations = [
        migrations.AddField(
            model_name='add_on',
            name='language',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='add_langue', to='ludorecherche.language', verbose_name='langue'),
        ),
    ]