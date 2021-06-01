from django.contrib import admin


from .models import News


@admin.register(News)
# decorator giving admin right to change create and modify target
class DesignerAdmin(admin.ModelAdmin):  # Article for presentation page
    search_fields = ['created_at', 'title']
    list_display = ('created_at', 'title')
    ordering = ['created_at', 'title']
