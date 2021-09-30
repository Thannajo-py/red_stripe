from datetime import date, timedelta


from django.db import models
from django.contrib.auth.models import User


from ludorecherche.models import Game, AddOn, MultiAddOn


class ReservationRule(models.Model):
    duration = models.IntegerField("durée", default=15)
    max_number = models.IntegerField("nombre max", default=3)


class Reservation(models.Model):
    created_at = models.DateTimeField("date de création", auto_now_add=True)
    expired_at = models.DateTimeField("date d'expiration", blank=True, null=True)
    game = models.ForeignKey(Game, verbose_name="jeu", on_delete=models.CASCADE, blank=True, null=True)
    addon = models.ForeignKey(AddOn, verbose_name="extension", on_delete=models.CASCADE, blank=True, null=True)
    multiaddon = models.ForeignKey(MultiAddOn, verbose_name="extension multiple", on_delete=models.CASCADE, blank=True, null=True)
    user_id = models.ForeignKey(User, verbose_name="utilisateur", on_delete=models.DO_NOTHING, blank=True, default=None, null=True)
    reservation = models.ForeignKey(ReservationRule, verbose_name="reservation", on_delete=models.CASCADE, blank=True,
                                    null=True)

