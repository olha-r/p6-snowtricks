$('.delete-img').on('click' , function (event) {
    let img = $(this).attr('id');
    console.log(img);
    console.log(window.location);
    if (confirm('Supprimer?')) {
        $.ajax({
            url: window.location.origin + '/trick/media/' + img,
            type: "GET",
            cache: false,
            success: function (data) {
                console.log(data);
                if (data.success === 1) {
                    $('#img-'+ img).remove();
                }
            },
            contentType: false,
            processData: false
        });
    }
});