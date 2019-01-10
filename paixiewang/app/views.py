import hashlib

from django.shortcuts import render,redirect
from app.models import *
import time
import random

# Create your views here.

def home(request):#主页
    to=request.session.get('token')
    return  render(request,'index/mainWeb.html',{'to':to})

def ext(request):#退出
    response=redirect('home:home')
    request.session.flush()
    return  response

def pass_token(password):
    md5 = hashlib.md5()
    md5.update(password.encode('utf-8'))
    return md5.hexdigest()

def cart(request):#购物车
    return  render(request,'index/cart.html')


def goodsinfo(request):#商品内容
    return  render(request,'index/goodsinfo.html')

def token():#token加密
    token=str(time.time()) + str(random.random())
    md5=hashlib.md5()
    md5.update(token.encode('utf-8'))
    return md5.hexdigest()

def login(request):#登录
    if request.method=='GET':
        return render(request, 'index/login.html')
    elif request.method=='POST':
        use=request.POST.get("username")
        passw=pass_token(request.POST.get("password"))

        users=User.objects.filter( username=use).filter(password=passw)
        if users.count():
            response=redirect('home:home')

            user=users.first()
            user.token=token()
            use.save()
            request.session['token']=use
            request.session.set_expiry(60)
            return response
        else:
            return render(request,'index/login.html',{'non':'密码或者账号错误'})




def register(requset):#注册界面
     if requset.method=='GET':
         return render(requset,'index/register.html')
     elif requset.method=='POST':
         use=User()
         use.username=requset.POST.get('username')
         use.password=pass_token(requset.POST.get('password'))
         use.password1=pass_token(requset.POST.get('password1'))
         if use.password==use.password1:
              use.token=token()
              use.save()

              response=redirect('home:home')
              requset.session['token']=use.username
              requset.session.set_expiry(60)
              return response
         else:
             return render(requset,'index/register.html',{'no':'密码输入不一致'})



