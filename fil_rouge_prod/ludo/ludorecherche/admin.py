from django.contrib import admin


from .models import Game, Designer, Artist, Publisher, AddOn, Language, PlayingMode, Difficulty, Tag, MultiAddOn


class MultiAddOnGameInline(admin.TabularInline):
    model = MultiAddOn.games.through
    extra = 1
    verbose_name = "extension partagée"
    verbose_name_plural = "extensions partagées"


@admin.register(Game)
class GameAdmin(admin.ModelAdmin):
    search_fields = ['name']
    inlines = [MultiAddOnGameInline, ]


@admin.register(Language)
class LanguageAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(PlayingMode)
class PlayingModeAdmin(admin.ModelAdmin):
    search_fields = ['name']


class DesignerMultiAddOnInline(admin.TabularInline):
    model = MultiAddOn.designers.through
    extra = 1
    verbose_name = "extension"
    verbose_name_plural = "extensions"


class DesignerAddOnInline(admin.TabularInline):
    model = AddOn.designers.through
    extra = 1
    verbose_name = "extension"
    verbose_name_plural = "extensions"


class DesignerGameInline(admin.TabularInline):
    model = Game.designers.through
    extra = 1
    verbose_name = "jeu"
    verbose_name_plural = "jeux"


@admin.register(Designer)
class DesignerAdmin(admin.ModelAdmin):
    search_fields = ['name']
    inlines = [DesignerGameInline, DesignerAddOnInline, DesignerMultiAddOnInline, ]


class ArtistGameInline(admin.TabularInline):
    model = Game.artists.through
    extra = 1
    verbose_name = "jeu"
    verbose_name_plural = "jeux"


class ArtistAddOnInline(admin.TabularInline):
    model = AddOn.artists.through
    extra = 1
    verbose_name = "extension"
    verbose_name_plural = "extensions"


class ArtistMultiAddOnInline(admin.TabularInline):
    model = MultiAddOn.artists.through
    extra = 1
    verbose_name = "extension partagée"
    verbose_name_plural = "extensions partagées"


@admin.register(Artist)
class ArtistAdmin(admin.ModelAdmin):
    search_fields = ['name']
    inlines = [ArtistAddOnInline, ArtistMultiAddOnInline, ArtistGameInline, ]


@admin.register(Publisher)
class PublisherAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(AddOn)
class AddOnAdmin(admin.ModelAdmin):
    search_fields = ['name']


@admin.register(Difficulty)
class DifficultyAdmin(admin.ModelAdmin):
    search_fields = ['name']


class GameTagInline(admin.TabularInline):
    model = Game.tag.through
    extra = 1
    verbose_name = "jeu"
    verbose_name_plural = "jeux"


@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
    search_fields = ['name']
    inlines = [GameTagInline, ]


@admin.register(MultiAddOn)
class MultiAddOnAdmin(admin.ModelAdmin):
    search_fields = ['name']
