from django.contrib import admin


from .models import News


@admin.register(News)
class DesignerAdmin(admin.ModelAdmin):
    search_fields = ['created_at', 'title']
    list_display = ('created_at', 'title')
    ordering = ['created_at', 'title']
