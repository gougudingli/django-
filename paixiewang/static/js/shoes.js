$(function (){

    $("#iphone1 ").blur(function () {
        var reg = /^(\+?0?86\-?)?1[345789]\d{9}$/;
        var isReg = reg.test($(this).val());

        if (!isReg){
               console.log('no')
            $(this).text("*手机号格式有误，请重新输入");

        } else {
            $(this).next().text("");

            // $.get('eckphone/',{'phone':$(this).val()},function (response) {
            //    console.log(response)
            // })
        }
    })
})