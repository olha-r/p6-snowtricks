$( window ).resize(function() {
    if (window.innerWidth <= 760) {
        $( "#medias-on-phone" ).show();
        $("#videos-on-phone").show();
        $(".trick-images").hide();
        $(".list-of-videos").hide();
    }
    else
    {
        $( "#medias-on-phone" ).hide();
        $("#videos-on-phone").hide();
        $("#hide-medias-on-phone").hide();
        $("#hide-videos-on-phone").hide();
        $(".trick-images").show();
        $(".list-of-videos").show();
    }

});
$(document).on('click', '#medias-on-phone', function () {
    $(".trick-images").show();
    $("#medias-on-phone").hide();
    $("#hide-medias-on-phone").show();
})
$(document).on('click', '#videos-on-phone', function () {
    $(".list-of-videos").show();
    $("#videos-on-phone").hide();
    $("#hide-videos-on-phone").show();
})

$(document).on('click', '#hide-medias-on-phone', function () {
    $(".trick-images").hide();
    $("#medias-on-phone").show();
    $("#hide-medias-on-phone").hide();
})
$(document).on('click', '#hide-videos-on-phone', function () {
    $(".list-of-videos").hide();
    $("#videos-on-phone").show();
    $("#hide-videos-on-phone").hide();
})
