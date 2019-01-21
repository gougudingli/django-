from django.conf.urls import url
from app.views import *




urlpatterns = [

    url(r'^$',home,name='home'),#主页

    url(r'^cart/$',cart,name='cart'),#购物车

    url(r'^ext/$',ext,name='ext'),#退出

    url(r'^goodsinfo/(\d+)$',goodsinfo,name='goodsinfo'),#商品内容

    url(r'^login/$',login,name='login'),#登录

    url(r'^register/$',register,name='register'),#注册页面

    url(r'^addgoodsinfo/$',addgoodsinfo,name='addgoodsinfo'),#添加购物车

    url(r'^delgoodsinfo/$',delgoodsinfo,name='delgoodsinfo'),#减少购物车

    url(r'^changeisselect/$',changeisselect,name='changeisselect'),#选择商品

    url(r'^changeall/$',changall,name='changall'),#选择全部

    url(r'^dele/$',dele,name='dele'),

    url(r'^generateorder/$',generateorder,name='generateorder'),

    url(r'^order/(.+)/$',order,name='name'),

    url(r'^appnotify/$',appnotify,name='appnotify'),

    url(r'^returnview/$',returnview,name='returnview'),

    url(r'^ordergoods/$',ordergoods,name='ordergoods'),

    url(r'^pay/$',pay,name='pay'),

    url(r'^ordertall/(.+)/$',ordertall,name='ordertall'),

    url(r'^orderlist/$',orderlist,name='orderlist'),



]