$('.delete-video').on('click' , function (event) {
    let video = $(this).attr('id');
    console.log(video);
    if (confirm('Supprimer video?')) {
        $.ajax({
            url: window.location.origin + '/trick/video/' + video,
            type: "GET",
            cache: false,
            success: function (data) {
                console.log(data);
                if (data.success === 1) {
                    $('#video-'+ video).remove();
                }
            },
            contentType: false,
            processData: false
        });
    }
});