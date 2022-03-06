$(document).ready(function(){
    $(".owl-carousel").owlCarousel({
        items:3,
        nav:true,
        rewind:true,
        margin: 20,
        responsive: {
            0: {
                items: 1
            },

            600: {
                items: 2
            },

            1024: {
                items: 3
            },

            1366: {
                items: 3
            }
        }
    });
});