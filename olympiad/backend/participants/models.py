from django.db import models

class Participant(models.Model):
    email = models.EmailField(help_text="Example@mail.ru")
    phone = models.CharField(max_length=20, help_text="+7 (___) ___-__-__")
    fio = models.CharField(max_length=100, help_text= "ФИО")
    institution = models.CharField(max_length=100, help_text="РГЭУ(РИНХ)")
    def __str__(self):
        return self.fio
    def get_absolute_url(self):
        """
        Returns the url to access a particular instance of the model.
        """
        return reverse('model-detail-view', args=[str(self.id)])


