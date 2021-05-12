from django.urls import path, re_path
from django.conf import settings
from django.conf.urls.static import static

from . import views




app_name = "ludogestion"
urlpatterns = [
    path('find_a_game/', views.find_a_game_page, name="find_a_game"),
    path('retrieve_a_game/', views.retrieve_game_from_api, name="retrieve_game_from_api"),
    path('log_in/', views.log_in, name="log_in"),
    path('log_out/', views.log_out, name="log_out"),
    re_path(r'^add_(?P<game_id>.+)/$', views.add_a_game, name='add_a_game'),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
