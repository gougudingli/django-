from django.db import models
# Create your models here.
from tinymce.models import HTMLField

class User(models.Model):
    username=models.CharField(max_length=20,unique=True)
    password=models.CharField(max_length=300)
    password1 = models.CharField(max_length=300)
    phone=models.CharField(max_length=18)
    token = models.CharField(max_length=300)


class Img(models.Model): #图片
    img= models.CharField(max_length=1000)
    name =models.CharField(max_length=100)
    trackid=models.CharField(max_length=10)
    price = models.CharField(max_length=200)
    class Meta:
        abstract =True

class Wheel(Img):#轮播

    class Meta:
        db_table='pxw_wheel'

class list_goods(Img):#商品列表

    class Meta:
        db_table = 'pxw_goods'

class Shoes(models.Model):#鞋子类型
    img = models.CharField(max_length=1000)
    shoesid =models.CharField(max_length=10)
    shoesname=models.CharField(max_length=50)
    sc= models.CharField(max_length=100)
    price=models.CharField(max_length=10)

class Cart(models.Model):# car
     user=models.ForeignKey(User)
     goods=models.ForeignKey(list_goods)
     number=models.IntegerField()
     isselect=models.BooleanField(default=True)

class Order(models.Model):
    user=models.ForeignKey(User)
    status=models.IntegerField(default=0)
    createtime=models.DateField(auto_now_add=True)
    idorder=models.CharField(max_length=300)


class OrderGoods(models.Model):
    order=models.ForeignKey(Order)
    goods=models.ForeignKey(list_goods)
    number=models.IntegerField(default=0)


