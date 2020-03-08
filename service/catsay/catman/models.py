from django.db import models

# Create your models here.

class User(models.Model):
    SEX_CHOICES = [
        [0, '男'],
        [1, '女'],
        [2, '其他'],
    ]

    name = models.CharField(max_length=20)
    pwd = models.CharField(max_length=64)
    phone = models.CharField(max_length=11)
    sex = models.IntegerField(choices=SEX_CHOICES, default=0)
    icon = models.ImageField(upload_to='icon', default='icon/default.png')