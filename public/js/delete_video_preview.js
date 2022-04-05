$(document).on('click', '.btn-video-preview', function () {
    console.log($(this).attr('data-link'));
    let link = $(this).attr('data-link');

    let data = new FormData;
    data.append('link', link);

    $.ajax({
            url: window.location.origin + '/trick/remove_video_preview',
            type: 'POST',
            cache: false,
            data: data,
            success: function (data) {
                console.log(data);

                console.log( $('.btn-video-preview').filter("[data-link='"+ link+"']"));
                $('.btn-video-preview').filter("[data-link='"+ link+"']").hide();
                $('.upload-video-preview').filter("[data-link='"+ link+"']").hide();
            },
            contentType: false,
            processData: false
        }
    );
});
