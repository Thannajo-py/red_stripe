from django.urls import path, re_path
from django.conf import settings
from django.conf.urls.static import static

from . import views




app_name = "ludorecherche"
urlpatterns = [
    path('404/', views.error_404, name='error_404'),
    path('500/', views.error_500, name='error_500'),
    path('', views.index, name='index'),
    path('list_all/', views.list_all, name='list_all'),
    re_path(r'^(?P<game_pk>[0-9]+)/$', views.detail, name='detail'),
    path('lucky/', views.lucky, name='lucky'),
    path('search/', views.search, name='search'),
    path('search_page/', views.search_page, name='search_page'),
    re_path(r'^add_on_(?P<add_on_pk>[0-9]+)/$', views.add_on_detail, name='add_on_detail'),
    path('advanced_search/', views.advanced_search, name="advanced_search"),
    re_path(r'^multi_add_on_(?P<multi_add_on_pk>[0-9]+)/$', views.multi_add_on_detail, name='multi_add_on_detail'),
    re_path(r'^add_on_(?P<add_on_pk>[0-9]+)/$', views.add_on_detail, name='add_on_detail'),
    re_path(r'^designer_(?P<designer_pk>[0-9]+)/$', views.designer_game_list, name='designer_game_list'),
    re_path(r'^artist_(?P<artist_pk>[0-9]+)/$', views.artist_game_list, name='artist_game_list'),
    re_path(r'^publisher_(?P<publisher_pk>[0-9]+)/$', views.publisher_game_list, name='publisher_game_list'),
    re_path(r'^playing_mode_(?P<playing_mode_pk>[0-9]+)/$', views.playing_mode_game_list,
            name='playing_mode_game_list'),
    re_path(r'^tag_(?P<tag_pk>[0-9]+)/$', views.tag_game_list, name='tag_game_list'),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
