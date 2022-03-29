$(document).on('click', '.remove', function () {
    // console.log($(event.target).closest('img'));

    let dataId = $(this).attr('data-id');

    let data = new FormData;
    data.append('mediaName', dataId);

    $.ajax({
            url: window.location.origin + '/trick/remove_media_preview',
            type: 'POST',
            cache: false,
            data: data,
            success: function (data) {
                console.log(data);
                $('.remove').filter("[data-id='"+ dataId+"']").parent('div').remove();
            },
            contentType: false,
            processData: false
        }
    );

});