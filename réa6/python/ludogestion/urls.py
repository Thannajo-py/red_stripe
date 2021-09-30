from django.urls import path, re_path
from django.conf import settings
from django.conf.urls.static import static

from . import views




app_name = "ludogestion"
urlpatterns = [
    path('find_a_game/', views.find_a_game_page, name="find_a_game"),  # basic page to add a game
    path('retrieve_a_game/', views.retrieve_game_from_api, name="retrieve_game_from_api"),  # recover data from API BGA
    path('log_in/', views.log_in, name="log_in"),  # handle connection attempt
    path('log_out/', views.log_out, name="log_out"),  # handle log out attempt
    path('log_in_page',views.log_in_page, name="log_in_page"),
    path('reservation_page', views.reservation_page, name="reservation_page"),
    path('register_a_game', views.register_a_game, name="register_a_game"),
    re_path(r'^add_(?P<game_id>.+)/$', views.add_a_game, name='add_a_game'),  # register game data in database
    re_path(r'^reservation_(?P<type_id>[0-9]+)_(?P<type_name>.+)/$', views.add_reservation, name='add_reservation'),  # reservation in database
    re_path(r'^remove_reservation_(?P<reservation_id>[0-9]+)/$', views.remove_reservation, name='remove_reservation'),  # remove reservation in database
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
