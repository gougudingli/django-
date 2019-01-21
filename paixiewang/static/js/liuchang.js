$(function () {
    $('.base-text').blur(function() {
        var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/
    if(reg.test($(this).val())){
            $.get('/axf/checkemail/',{'email':$(this).val()},function (response) {
             console.log(response)
             if (response.status){
                 $('.login-text').removeClass('has-error').addClass('has-success')
                 $('.login-text>span').removeClass('glyphicon-remove').addClass('plyphicon-ok')
                 $('.err').html('')
             }else{
                 $('.login-text').removeClass('has-success').addclass('has-eeor')
                 $('.login-text>span').removeClass('plyphicon-ok').addClass('plyphicon-remove')
                 $('.login-text').html('')
             }


            })
    }

    }
})

$('#subButton').click(function () {
    var isregister=true
    $('.form-group').each(function () {
        if (!$(this).hasClass('has-success'))
            isregister=false

    })


})
if(isregister){
        $('.register').submit
}