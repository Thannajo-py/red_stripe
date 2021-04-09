from django.contrib import admin

from .models import Game,Designer,Artist,Publisher,Add_on,Language,PlayingMode,Difficulty,Tag,Multi_add_on


@admin.register(Game)
class GameAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(Language)
class LanguageAdmin(admin.ModelAdmin):
    search_fields = ['name']

@admin.register(PlayingMode)
class PlayingModeAdmin(admin.ModelAdmin):
    search_fields = ['name']

@admin.register(Designer)
class DesignereAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(Artist)
class ArtistAdmin(admin.ModelAdmin):
    search_fields = ['name']

@admin.register(Publisher)
class PublisherAdmin(admin.ModelAdmin):
    search_fields = ['name']

@admin.register(Add_on)
class Add_onAdmin(admin.ModelAdmin):
    search_fields = ['name']

@admin.register(Difficulty)
class DifficultyAdmin(admin.ModelAdmin):
    search_fields = ['name']

@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(Multi_add_on)
class Multi_add_onAdmin(admin.ModelAdmin):
    search_fields = ['name']