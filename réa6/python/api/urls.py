from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

from . import views




app_name = "api"
urlpatterns = [
    # post a comment for a game, add_on, multi_add_ons or news
    path('synchronize-change/', views.synchronize_change, name="synchronize_change"),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
