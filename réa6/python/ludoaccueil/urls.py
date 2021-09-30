from django.urls import path, re_path
from django.conf import settings
from django.conf.urls.static import static

from . import views




app_name = "ludoaccueil"
urlpatterns = [
    # post a comment for a game, add_on, multi_add_ons or news
    re_path(r'^post_(?P<type_id>.+)_type_(?P<type_name>.+)/$', views.post_comment, name="post_comment"),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
