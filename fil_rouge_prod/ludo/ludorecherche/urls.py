from django.contrib import admin
from django.urls import path,re_path
from . import views
from django.conf.urls import url


app_name="ludorecherche"
urlpatterns = [
    path('', views.index,name='index'),
    path('list_all/',views.list_all,name='list_all'),
    re_path(r'^(?P<game_pk>[0-9]+)/$',views.detail,name='detail'),
    path('lucky/',views.lucky,name='lucky'),
    path('search/',views.search,name='search'),
    path('search_page/',views.search_page,name='search_page'),
    re_path(r'^add_on_(?P<add_on_pk>[0-9]+)/$',views.add_on_detail,name='add_on_detail'),
    path('advanced_search/',views.advanced_search,name="advanced_search"),
    #for seeing page404 error while debug=true
    path('error404/',views.error404,name='error404'),
    #for seeing page500 error while debug=true
    path('error500/',views.error500,name='error500'),
    re_path(r'^multi_add_on_(?P<multi_add_on_pk>[0-9]+)/$',views.multi_add_on_detail,name='multi_add_on_detail'),
    re_path(r'^add_on_(?P<add_on_pk>[0-9]+)/$',views.add_on_detail,name='add_on_detail'),
    re_path(r'^designer_(?P<designer_pk>[0-9]+)/$',views.designer_game_list,name='designer_game_list'),
    re_path(r'^artist_(?P<artist_pk>[0-9]+)/$',views.artist_game_list,name='artist_game_list'),
    re_path(r'^publisher_(?P<publisher_pk>[0-9]+)/$',views.publisher_game_list,name='publisher_game_list'),
    re_path(r'^game_type_(?P<game_type_pk>[0-9]+)/$',views.game_type_game_list,name='game_type_game_list'),
    re_path(r'^tag_(?P<tag_pk>[0-9]+)/$',views.tag_game_list,name='tag_game_list'),
]