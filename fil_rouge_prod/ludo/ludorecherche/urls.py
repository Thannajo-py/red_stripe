from django.urls import path, re_path, include
from django.conf import settings
from django.conf.urls.static import static

from . import views




app_name = "ludorecherche"
urlpatterns = [
    path('404/', views.error_404, name='error_404'),  # path for testing 404 page while debug on
    path('500/', views.error_500, name='error_500'),  # path for testing 404 page while debug on
    path('', views.index, name='index'),  # ludorecherche base page
    path('list_all/', views.list_all, name='list_all'),  # ludorecherche list all page
    re_path(r'^(?P<game_pk>[0-9]+)/$', views.detail, name='detail'),  # view detail of a particular game
    path('lucky/', views.lucky, name='lucky'),  # return detail of a random game
    path('search/', views.search, name='search'),  # handle basic search from nav
    path('search_page/', views.search_page, name='search_page'),  # return andvanced search page
    re_path(r'^add_on_(?P<add_on_pk>[0-9]+)/$', views.add_on_detail, name='add_on_detail'),
    # return detail of an add on page
    path('advanced_search/', views.advanced_search, name="advanced_search"),  # handle advanced search
    re_path(r'^multi_add_on_(?P<multi_add_on_pk>[0-9]+)/$', views.multi_add_on_detail, name='multi_add_on_detail'),
    # return detail of a multi add on page
    re_path(r'^designer_(?P<designer_pk>[0-9]+)/$', views.designer_game_list, name='designer_game_list'),
    # return list of all specific designer games in database
    re_path(r'^artist_(?P<artist_pk>[0-9]+)/$', views.artist_game_list, name='artist_game_list'),
    # return list of all specific artist games in database
    re_path(r'^publisher_(?P<publisher_pk>[0-9]+)/$', views.publisher_game_list, name='publisher_game_list'),
    # return list of all specific publisher games in database
    re_path(r'^playing_mode_(?P<playing_mode_pk>[0-9]+)/$', views.playing_mode_game_list,
            name='playing_mode_game_list'),
    # return list of all specific playing mode games in database
    re_path(r'^tag_(?P<tag_pk>[0-9]+)/$', views.tag_game_list, name='tag_game_list'),
    # return list of all specific tag games in database
    re_path(r'^mechanism_(?P<mechanism_pk>[0-9]+)/$', views.mechanism_game_list, name='mechanism_game_list'),
    # return list of all specific mechanism games in database
    re_path(r'^topic_(?P<topic_pk>[0-9]+)/$', views.topic_game_list, name='topic_game_list'),
    # return list of all specific topic games in database
    path('ludogestion/', include('ludogestion.urls', namespace='ludogestion')),
    # include ludogestion app urls
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
