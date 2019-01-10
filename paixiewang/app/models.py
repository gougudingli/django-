from django.db import models

# Create your models here.
from tinymce.models import HTMLField


class User(models.Model):
    username=models.CharField(max_length=20,unique=True)
    password=models.CharField(max_length=300)
    password1 = models.CharField(max_length=300)
    phone=models.CharField(max_length=18)
    content=HTMLField()
    token = models.CharField(max_length=300)

