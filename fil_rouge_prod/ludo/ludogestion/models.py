from django.db import models


class User(models.Model):
    name = models.CharField('nom', max_length=50, unique=True)
    password = models.CharField('mot de passe', max_length=50)

