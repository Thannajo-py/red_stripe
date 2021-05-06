from django.contrib import admin


from .models import Game, Designer, Artist, Publisher, AddOn, Language, PlayingMode, \
    Difficulty, Tag, MultiAddOn, Theme, Background, Topic, Mechanism


class MultiAddOnGameInline(admin.TabularInline):
    model = MultiAddOn.games.through
    extra = 1
    verbose_name = "extension partagée"
    verbose_name_plural = "extensions partagées"


@admin.register(Game)
class GameAdmin(admin.ModelAdmin):
    search_fields = ['name']
    inlines = [MultiAddOnGameInline, ]
    list_display = ['name', ]
    ordering = ['name']


@admin.register(Language)
class LanguageAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


@admin.register(PlayingMode)
class PlayingModeAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


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
    list_display = ('name',)
    ordering = ['name']


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
    list_display = ('name',)
    ordering = ['name']


@admin.register(Publisher)
class PublisherAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


@admin.register(AddOn)
class AddOnAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


@admin.register(Difficulty)
class DifficultyAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


class GameTagInline(admin.TabularInline):
    model = Game.tag.through
    extra = 1
    verbose_name = "jeu"
    verbose_name_plural = "jeux"


@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
    search_fields = ['name']
    inlines = [GameTagInline, ]
    list_display = ('name',)
    ordering = ['name']


@admin.register(MultiAddOn)
class MultiAddOnAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


@admin.register(Theme)
class ThemeAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


@admin.register(Background)
class BackgroundAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']

    def has_add_permission(self, request):
        return False

    def has_delete_permission(self, request, obj=None):
        return False


class GameTopicInline(admin.TabularInline):
    model = Game.topic.through
    extra = 1
    verbose_name = "jeu"
    verbose_name_plural = "jeux"


@admin.register(Topic)
class TopicAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']
    inlines = [GameTopicInline, ]


class GameMechanismInline(admin.TabularInline):
    model = Game.mechanism.through
    extra = 1
    verbose_name = "jeu"
    verbose_name_plural = "jeux"


@admin.register(Mechanism)
class MechanismAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']
    inlines = [GameMechanismInline, ]
