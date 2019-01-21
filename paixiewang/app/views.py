import hashlib

from django.http import JsonResponse
from django.shortcuts import render,redirect
from django.views.decorators.cache import cache_page
from django.views.decorators.csrf import csrf_exempt

from app.alipay import alipay
from app.models import *
import time
import random
# Create your views here.

def home(request):#主页
    wheel = Wheel.objects.all()
    goods= list_goods.objects.all()
    shoes = Shoes.objects.all()
    to=request.session.get('token')
    try:
        uesr=User.objects.get(token=to)
        to=uesr.username
    except:
        to=None

    date = {
        'to': to,
        'wheel': wheel,
        'goods': goods,
        'shoes': shoes
    }
    return  render(request,'index/mainWeb.html',date)

def ext(request):#退出
    response=redirect('home:home')
    request.session.flush()
    return  response

def pass_token(password):
    md5 = hashlib.md5()
    md5.update(password.encode('utf-8'))
    return md5.hexdigest()


def cart(request):#购物车
        tot = request.session.get('token')


        if token():
            uesr = User.objects.get(token=tot)
            print(uesr)
            to = uesr.username
            carts=Cart.objects.filter(user=uesr).exclude(number=0)


            data={'to': to,'carts':carts}
            return  render(request,'index/cart.html',data)
        else:
            return redirect('home:login')


def goodsinfo(request,bid):#商品内容
    try:
        tot = request.session.get('token')
        uesr = User.objects.get(token=tot)
        to = uesr.username
    except:
        to = None

    # uesr = User.objects.get(token=to)
    # to = uesr.username
    good=list_goods.objects.get(id=bid)

    return  render(request,'index/goodsinfo.html',{'good':good,'to':to })

def token():#token加密
    token=str(time.time()) + str(random.random())
    md5=hashlib.md5()
    md5.update(token.encode('utf-8'))
    return md5.hexdigest()

def login(request):#登录
    if request.method=='GET':
        print('登录')
        return render(request, 'index/login.html')
    elif request.method=='POST':
        use=request.POST.get("username")

        passw=request.POST.get("password")

        users=User.objects.filter(username=use).filter(password=pass_token(passw))
        if users.count():

            user=users.first()

            user.token=token()
            user.save()
            response = redirect('home:home')
            request.session['token']=user.token
            request.session.set_expiry((60*60)*24)
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
         use.phone=requset.POST.get('phone')

         if use.password==use.password1 :

              use.token=token()
              use.save()
              response=redirect('home:home')
              requset.session['token']=use.token
              requset.session.set_expiry((60*60)*24)
              return response
         else:
             return render(requset,'index/register.html')

def addgoodsinfo(request):#添加购物车

    token=request.session.get('token')
    if token:
        users=User.objects.get(token=token)

        goodsid=request.GET.get('goodsid')

        goods=list_goods.objects.get(pk=goodsid)

        carts=Cart.objects.filter(user=users).filter(goods=goods)

        if carts.exists():
                cart = carts.first()
                cart.number=cart.number+1
                cart.save()
        else:
                cart =Cart()
                cart.user=users
                cart.goods=goods
                cart.number=1
                cart.save()

        return JsonResponse({'status':1,'number':cart.number})
    else:
        return JsonResponse({'status':0})

def delgoodsinfo(request): #减少商品数量
    token=request.session.get('token')
    print(token)
    if token:
        use=User.objects.get(token=token)
        goodsid=request.GET.get('goodsid')
        goods=list_goods.objects.get(id=goodsid)
        carts=Cart.objects.filter(user=use).filter(goods=goods)
        cart=carts.first()
        if cart.number>=1:
            cart.number=cart.number-1
            cart.save()
        return JsonResponse({'static1':1,'number':cart.number})

    else:
        return JsonResponse({'static1':0})

def changeisselect(request):
    cartid=request.GET.get('cartid')
    c=request.GET.get('c')
    cart=Cart.objects.get(id=cartid)
    if c=='true':
       c=True
    else:
        c=False
    cart.isselect=c
    cart.save()

    date ={
        'status':1,

    }
    return JsonResponse(date)


def changall(request):
    token=request.session.get('token')
    user=User.objects.get(token=token)

    isall=request.GET.get('isall')
    if  isall == 'true':
        isall = True
    else:
        isall = False

    carts = Cart.objects.filter(user=user).update(isselect=isall)

    data = {
        'msg': '状态修改成功',
        'status': 1,
    }

    return JsonResponse(data)

def dele(request):

    cartid=request.GET.get('cartid')

    if cartid:
      cart=Cart.objects.get(id=cartid)

      cart.number= 0
      cart.save()
    date={
         'status':1,
          'cart':cart.number
         }
    return  JsonResponse(date)

def generate_identifire():
    tempstr = str(int(time.time())) + str(random.random())
    return tempstr

def generateorder(request):

    token=request.session.get('token')
    user=User.objects.get(token=token)

    carts=Cart.objects.filter(user=user).filter(isselect=True).exclude(number=0)
    order = Order()
    order.user = user
    order.idorder = generate_identifire()
    order.save()

    for cart in carts:
        orderGoods=OrderGoods()
        orderGoods.order=order
        orderGoods.goods=cart.goods
        orderGoods.number=cart.number
        orderGoods.save()
        cart.delete()
    data={'status':1,'idorder':order.idorder}
    return JsonResponse(data)

def order(request,idorder):
    # token=request.session.get('token')
    # user=User.objects.get(token=token)
    # orders=Order.objects.filter(user=user)
    # order1=Order.objects.all()
    order = Order.objects.get(idorder=idorder)


    return render(request,'index/order.html',{'order':order})



def returnview(request):


    return redirect('home:home')

@csrf_exempt
def appnotify(request):
    if request.method == 'POST':
        from urllib.parse import parse_qs
        body_str = request.body.decode('utf-8')
        post_data = parse_qs(body_str)
        post_dir = {}

        print(body_str)
        print(post_data)
        print(post_data.items())
        for key, value in post_data.items():
            post_dir[key] = value[0]

        out_trade_no = post_dir['out_trade_no']
        print(out_trade_no)

        # 更新状态
        Order.objects.filter(idorder=out_trade_no).update(status=1)

    return JsonResponse({'msg':'success'})

def ordergoods(request):
    idorder=request.GET.get('idoder')

    order=Order.objects.get(idorder=idorder)

    ordergoods=OrderGoods.objects.filter(order=order)
    date={
        'status':1
    }
    return JsonResponse(date)
def ordertall(request,idorder):
    order=Order.objects.get(idorder=idorder)

    ordergoods=OrderGoods.objects.filter(order=order)

    return render(request,'index/ordergoods.html',context={'ordergoods':ordergoods})

def pay(request):
    idorder = request.GET.get('idorder')
    order = Order.objects.get(idorder=idorder)

    sum = 0
    for orderGoods in order.ordergoods_set.all():
        sum += int(orderGoods.goods.price) * orderGoods.number

    # 支付地址
    url = alipay.direct_pay(
        subject='OK ',  # 支付宝页面显示的标题
        out_trade_no=idorder,  # AXF订单编号
        total_amount=str(sum),  # 订单金额
        return_url='http://39.106.119.100/returnview/'
    )

    # 拼接上支付网关
    alipayurl = 'https://openapi.alipaydev.com/gateway.do?{data}'.format(data=url)

    return JsonResponse({'alipayurl': alipayurl, 'status': 1})

def orderlist(request):
    token=request.session.get('token')
    user=User.objects.get(token=token)
    orders=Order.objects.filter(user=user)

    return render(request,'index/orderlist.html',{'orders':orders})