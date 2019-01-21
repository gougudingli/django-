$(function () {
      $('#okok').click(function () {
          var idorder=$(this).attr('idorder')
          data={
              'idorder':idorder
          }
          $.get('/pay/',data,function (ddd) {
              if(ddd.status==1){
                    window.open(ddd.alipayurl, target='_self')
              }
          })
      })
    // $('#ppp').click(function () {
    //     var idoder=$(this).attr('idorder')
    //     console.log(idoder)
    //
    //     data={
    //         'idoder':idoder
    //     }
    //
    //     $.get('/ordergoods/',data,function (response) {
    //
    //         if(response.status==1){
    //               window.open('/ordertall/')
    //         }
    //     })
    //
    // })
})