from django.conf.urls import url
from app.views import *

urlpatterns = [

    url(r'^$',home,name='home'),#主页

    url(r'^cart$',cart,name='cart'),#购物车

    url(r'^ext$',ext,name='ext'),#退出

    url(r'^goodsinfo$',goodsinfo,name='goodsinfo'),#商品内容

    url(r'^login$',login,name='login'),#登录

    url(r'^register$',register,name='register'),#注册页面


]