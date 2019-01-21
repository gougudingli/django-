window.onload = function (ev) {
    $('img').each(function () {
        var imgpath = $(this).attr('src')
        imgpath = "{% static '" + imgpath + "' %}"
        $(this).attr('src',imgpath)
    })
    console.log($('body').html())
}