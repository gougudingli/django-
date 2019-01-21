$(function () {
    $('.box-chk input').click(function () {

         var cartid=$(this).attr('cartid')
         // var isselect=$(this).attr('cart.isselect')
          var c = $(this).prop('checked')
        console.log(c)
           $that=$(this)
              data = {
                 'cartid':cartid,
                  'c':c
                 // 'isselect':isselect

              }
         $.get('/changeisselect/',data,function (reponse) {

             })

    })
    $('.ben001').click(function () {
        var isall=$(this).attr('isall')
        isall=(isall=='true')? true:false

        $(this).attr('isall',isall)
        if (isall){
            $(this).checked=!$(this).checked;
        }else {
            $(this).checked=!$(this).checked;
        }

        data ={
            'isall':isall
        }
        $.get('/changeall/',data,function (bid) {
            console.log(bid)
             if (bid.status == 1){
                $('.ben001').each(function () {
                    if (isall){ // 选中

                    } else {    // 取消选中

                    }
                })
            }

        })
     $('.cart-box-current').find('input').hover(function () {
            alert('hhhhhhhh')
        },function () {

     })


    })

    $('.cccc').click(function () {

        var cartid=$(this).attr('cartid')
         console.log(cartid)
        data={
            'cartid':cartid
        }
        $that=$(this)

        $.get('/dele/',data,function (reponse) {
                console.log(reponse.status)
            if (reponse.status==1){
                    $that.parent().parent().hide()
            }
            })


          })
        //    console.log(cartid)
        // data={
        //    'cartid':cartid
        //  }
        // $.get('/dele/',data,function (nihao) {
        //         console.log(nihao)
        //
        //
        //
        //     })




    $("#js-go-pay").on('click',function () {

            $.get('/generateorder/',function (reponse) {
                console.log(reponse.status)
            if(reponse.status==1){
                window.open('/order/'+reponse.idorder+'/',target='_self')

            }
        })
    // $(".area-go-pay div").click(function () {
    //      console.log($(".area-go-pay div"))
    //     $.get('/generateorder/',function (reponse) {
    //         if(reponse.status==1){
    //             window.open('/order/',target='_self')
    //         }

        // })

     })

    $('#ppp').click(function () {
        var idoder=$(this).attr('idoder')
        console.log(idoder)

        data={
            'idoder':idoder
        }

        $.get('ordergoods',data,function (response) {
            window.open('/ordergoods/')
        })

    })


})
// function strong(){
//         sum=0
//         $(".cart-box-current").find('input').each(function () {
//             console.log(1231231)
//             $("input[type='checkbox']").is('checked')
//             if('checked'){
//                 var num=$(this).nextAll.$('.box-num').val()
//                 var price=$(this).nextAll.$('.box-price').val()
//                 console.log(num)
//
//                  sum += num * price
//             }
//         })
//         $('#total').html(parseInt(sum))
//
//     }