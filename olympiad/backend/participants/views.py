from django.shortcuts import render
from rest_framework.response import Response
from rest_framework import viewsets, permissions, mixins, generics, status
from .models import Participant
from .serializers import ParticipantSerializer


class ParticipantsViewSet(viewsets.GenericViewSet,mixins.CreateModelMixin,):
    queryset = Participant.objects.all()
    serializer_class = ParticipantSerializer
    # permissions_classes = [permissions.I]
    def create(self,request):
            serializer = self.get_serializer(data=request.data)
            serializer.is_valid(raise_exception=True)
            serializer.save()
            return Response("Принято", status=status.HTTP_201_CREATED)