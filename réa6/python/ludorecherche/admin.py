from django.contrib import admin


from .models import Game, Designer, Artist, Publisher, AddOn, Language, PlayingMode, \
    Difficulty, Tag, MultiAddOn, Theme, Background, Topic, Mechanism, DeletedGames
# What the admin can do and can't do


class MultiAddOnGameInline(admin.TabularInline):
    # make access to one table through another by admin possible
    model = MultiAddOn.games.through
    extra = 1
    verbose_name = "extension partagée"
    verbose_name_plural = "extensions partagées"


@admin.register(Game)
# decorator giving admin right to change create and modify target
class GameAdmin(admin.ModelAdmin):
    search_fields = ['name']
    inlines = [MultiAddOnGameInline, ]
    list_display = ['name', ]
    ordering = ['name']
    exclude = ['modified_at']


@admin.register(Language)
# decorator giving admin right to change create and modify target
class LanguageAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


@admin.register(PlayingMode)
# decorator giving admin right to change create and modify target
class PlayingModeAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


class DesignerMultiAddOnInline(admin.TabularInline):
    # make access to one table through another by admin possible
    model = MultiAddOn.designers.through
    extra = 1
    verbose_name = "extension"
    verbose_name_plural = "extensions"


class DesignerAddOnInline(admin.TabularInline):
    # make access to one table through another by admin possible
    model = AddOn.designers.through
    extra = 1
    verbose_name = "extension"
    verbose_name_plural = "extensions"


class DesignerGameInline(admin.TabularInline):
    # make access to one table through another by admin possible
    model = Game.designers.through
    extra = 1
    verbose_name = "jeu"
    verbose_name_plural = "jeux"


@admin.register(Designer)
# decorator giving admin right to change create and modify target
class DesignerAdmin(admin.ModelAdmin):
    search_fields = ['name']
    inlines = [DesignerGameInline, DesignerAddOnInline, DesignerMultiAddOnInline, ]
    list_display = ('name',)
    ordering = ['name']


class ArtistGameInline(admin.TabularInline):
    # make access to one table through another by admin possible
    model = Game.artists.through
    extra = 1
    verbose_name = "jeu"
    verbose_name_plural = "jeux"


class ArtistAddOnInline(admin.TabularInline):
    # make access to one table through another by admin possible
    model = AddOn.artists.through
    extra = 1
    verbose_name = "extension"
    verbose_name_plural = "extensions"


class ArtistMultiAddOnInline(admin.TabularInline):
    # make access to one table through another by admin possible
    model = MultiAddOn.artists.through
    extra = 1
    verbose_name = "extension partagée"
    verbose_name_plural = "extensions partagées"


@admin.register(Artist)
# decorator giving admin right to change create and modify target
class ArtistAdmin(admin.ModelAdmin):
    search_fields = ['name']
    inlines = [ArtistAddOnInline, ArtistMultiAddOnInline, ArtistGameInline, ]
    list_display = ('name',)
    ordering = ['name']


@admin.register(Publisher)
# decorator giving admin right to change create and modify target
class PublisherAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


@admin.register(AddOn)
# decorator giving admin right to change create and modify target
class AddOnAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']
    exclude = ['modified_at']


@admin.register(Difficulty)
# decorator giving admin right to change create and modify target
class DifficultyAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


class GameTagInline(admin.TabularInline):
    # make access to one table through another by admin possible
    model = Game.tag.through
    extra = 1
    verbose_name = "jeu"
    verbose_name_plural = "jeux"


@admin.register(Tag)
# decorator giving admin right to change create and modify target
class TagAdmin(admin.ModelAdmin):
    search_fields = ['name']
    inlines = [GameTagInline, ]
    list_display = ('name',)
    ordering = ['name']


@admin.register(MultiAddOn)
# decorator giving admin right to change create and modify target
class MultiAddOnAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']
    exclude = ['modified_at']


@admin.register(Theme)
# decorator giving admin right to change create and modify target
class ThemeAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']


@admin.register(Background)
# decorator giving admin right to change create and modify target
class BackgroundAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']

    def has_add_permission(self, request):  # custom permission denied
        return False

    def has_delete_permission(self, request, obj=None):  # custom permission denied
        return False


class GameTopicInline(admin.TabularInline):
    # make access to one table through another by admin possible
    model = Game.topic.through
    extra = 1
    verbose_name = "jeu"
    verbose_name_plural = "jeux"


@admin.register(Topic)
# decorator giving admin right to change create and modify target
class TopicAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']
    inlines = [GameTopicInline, ]


class GameMechanismInline(admin.TabularInline):
    # make access to one table through another by admin possible
    model = Game.mechanism.through
    extra = 1
    verbose_name = "jeu"
    verbose_name_plural = "jeux"


@admin.register(Mechanism)
# decorator giving admin right to change create and modify target
class MechanismAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_display = ('name',)
    ordering = ['name']
    inlines = [GameMechanismInline, ]


@admin.register(DeletedGames)
class DeletedGamesAdmin(admin.ModelAdmin):
    def has_add_permission(self, request):  # custom permission denied
        return False

    def has_view_or_change_permission(self, request, obj=None):  # custom permission denied
        return False
