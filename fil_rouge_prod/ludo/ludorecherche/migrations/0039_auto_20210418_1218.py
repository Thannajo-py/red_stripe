# Generated by Django 3.1.7 on 2021-04-18 10:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0038_auto_20210418_1215'),
    ]

    operations = [
        migrations.AddField(
            model_name='addon',
            name='buying_price',
            field=models.IntegerField(blank=True, null=True, verbose_name="prix d'achat"),
        ),
        migrations.AddField(
            model_name='addon',
            name='stock',
            field=models.IntegerField(blank=True, null=True, verbose_name='Quantité'),
        ),
        migrations.AddField(
            model_name='game',
            name='buying_price',
            field=models.IntegerField(blank=True, null=True, verbose_name="prix d'achat"),
        ),
        migrations.AddField(
            model_name='game',
            name='stock',
            field=models.IntegerField(blank=True, null=True, verbose_name='Quantité'),
        ),
        migrations.AddField(
            model_name='multiaddon',
            name='buying_price',
            field=models.IntegerField(blank=True, null=True, verbose_name="prix d'achat"),
        ),
        migrations.AddField(
            model_name='multiaddon',
            name='stock',
            field=models.IntegerField(blank=True, null=True, verbose_name='Quantité'),
        ),
    ]
