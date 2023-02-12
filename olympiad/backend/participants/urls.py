from django.urls import include, path
from rest_framework import routers
from .views import ParticipantsViewSet

router = routers.DefaultRouter()
router.register(r'participants', ParticipantsViewSet)

urlpatterns = [
    path('', include(router.urls)),
]