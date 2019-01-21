$(function () {
    $('.num-up').click(function () {
        var goodsid =$(this).attr('goodsid')
        var $that=$(this)

        data={
            'goodsid':goodsid
        }
        $.get('/addgoodsinfo/',data,function (data) {
           console.log(data)
           if (data.status==0){
                window.open('/login/',target='_self')
           }else if(data.status==1){
                $that.prev().show().val(data.number)

           }
        })
    })
    $('#down').click(function () {
        var goodsid=$(this).attr('goodsid')
        var $that=$(this)
        console.log('goodsid')
        data={
            'goodsid':goodsid
        }
        $.get('/delgoodsinfo/',data,function(response) {
            console.log(response)
            if(response.static1==0){
                 window.open('/login/',target='_self')

            }else if(response.static1==1) {
                 if(response.number>=0){
                   $that.next().show().val(response.number)
                }
            }

        })

    })
})
