from django.contrib import admin

from .models import Game, Designer, Artist, Publisher, AddOn, Language, PlayingMode, Difficulty, Tag, MultiAddOn


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
class DesignerAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(Artist)
class ArtistAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(Publisher)
class PublisherAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(AddOn)
class AddOnAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(Difficulty)
class DifficultyAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(MultiAddOn)
class MultiAddOnAdmin(admin.ModelAdmin):
    search_fields = ['name']
