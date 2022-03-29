$(document).ready(function () {
    $('#trick_medias').on('change', function (e) {
        e.preventDefault();
        var inputFile = document.getElementById('trick_medias');
        var files = inputFile.files;
        console.log(files);

        var form_data = new FormData();
        $.each(files, function (i, file) {
            form_data.append('medias[]', file);
            // console.log(file);
        });
        // console.log(form_data);
        $.ajax({
            url: window.location.origin + '/trick/add_media_preview',
            method: 'POST',
            data: form_data,
            dataType: "json",
            contentType: false,
            cache: false,
            processData: false,
            // success: function (data) {
            //     console.log(data);
            // }
            success: function (response) {
                console.log(response);
                template(response);
                inputFile.value = "";
            }
        });
    });
});


function template(data) {
    for (var i = 0; i < data.length; i++) {
        console.log(data[i].name);
        var imageName = data[i].name;
        var template = '<div>' +
            '<img class="upload-image-preview" src="/uploads/temp/' + imageName + '" alt="image to upload" width="300" height="200" />' +
            '<a href="#" class="remove" data-id="'+ imageName +'"><i class="fas fa-ban"></i></a>' +
            '</div>'
        ;
        $('#images-to-upload').append(template);
    }
}
