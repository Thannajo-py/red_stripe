from django.contrib import admin


from .models import News, Comment


@admin.register(News)
# decorator giving admin right to change create and modify target
class DesignerAdmin(admin.ModelAdmin):  # Article for presentation page
    search_fields = ['created_at', 'title']
    list_display = ('created_at', 'title')
    ordering = ['created_at', 'title']


@admin.register(Comment)
# decorator giving admin right to change create and modify target
class CommentAdmin(admin.ModelAdmin):  # comment of game or news
    search_fields = ['created_at', 'title']
    list_display = ('created_at', 'title')
    ordering = ['created_at', 'title']




