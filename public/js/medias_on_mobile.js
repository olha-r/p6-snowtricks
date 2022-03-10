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
