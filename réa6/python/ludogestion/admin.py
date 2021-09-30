from django.contrib import admin
from .models import Reservation, ReservationRule


@admin.register(Reservation)
# decorator giving admin right to change create and modify target
class GameAdmin(admin.ModelAdmin):
    search_fields = ['created_at', 'expired_at']
    list_display = ['created_at', 'expired_at', 'user_id']
    ordering = ['created_at']

@admin.register(ReservationRule)
# decorator giving admin right to change create and modify target
class ReservationRuleAdmin(admin.ModelAdmin):
    def has_add_permission(self, request):  # custom permission denied
        return False

    def has_delete_permission(self, request, obj=None):  # custom permission denied
        return False
