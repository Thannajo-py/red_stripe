# Generated by Django 3.1.7 on 2021-05-11 10:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0043_auto_20210511_1205'),
    ]

    operations = [
        migrations.AlterField(
            model_name='addon',
            name='external_image',
            field=models.TextField(blank=True, null=True, verbose_name="URL externe de l'image"),
        ),
        migrations.AlterField(
            model_name='addon',
            name='picture',
            field=models.TextField(blank=True, null=True, verbose_name="URL interne de l'image"),
        ),
        migrations.AlterField(
            model_name='addon',
            name='thumb_image',
            field=models.TextField(blank=True, null=True, verbose_name="URL externe de l'image de petite taille"),
        ),
        migrations.AlterField(
            model_name='game',
            name='external_image',
            field=models.TextField(blank=True, null=True, verbose_name="URL externe de l'image"),
        ),
        migrations.AlterField(
            model_name='game',
            name='picture',
            field=models.TextField(blank=True, null=True, verbose_name="URL interne de l'image"),
        ),
        migrations.AlterField(
            model_name='game',
            name='thumb_image',
            field=models.TextField(blank=True, null=True, verbose_name="URL externe de l'image de petite taille"),
        ),
        migrations.AlterField(
            model_name='multiaddon',
            name='external_image',
            field=models.TextField(blank=True, null=True, verbose_name="URL externe de l'image"),
        ),
        migrations.AlterField(
            model_name='multiaddon',
            name='picture',
            field=models.TextField(blank=True, null=True, verbose_name="URL interne de l'image"),
        ),
        migrations.AlterField(
            model_name='multiaddon',
            name='thumb_image',
            field=models.TextField(blank=True, null=True, verbose_name="URL externe de l'image de petite taille"),
        ),
    ]