$(document).ready(function () {
    $('#trick_medias').on('change', function (e) {
        e.preventDefault();
        // var file_data = document.getElementById('trick_medias').files;
        var inputFile = document.getElementById('trick_medias');
        var files = inputFile.files;
        console.log(files);

        var form_data = new FormData();
        $.each(files, function(i, file) {
            form_data.append('medias[]', file);
            console.log(file);
            reader.readAsDataURL(file);
            console.log(file.name);
            reader.onload = function (e) {
                var template = '<div>' +
                    '<img class="upload-image-preview" src="' + e.target.result + '" alt="image to upload" width="300" height="200" />' +
                    '<a href="#" class="remove" data-name="' + file.name + '"><i class="fas fa-ban"></i></a>' +
                    '</div>'
                ;
                $('#images-to-upload').append(template);
            }
        });

        // form_data.append('medias', files);
        console.log(form_data);

        $.ajax({
            url: window.location.origin + '/trick/add_media_preview',
            method: 'POST',
            data: form_data,
            contentType: false,
            cache: false,
            processData: false,
            success: function (data) {
                console.log(data);
            }
        });



    });


        //
        // $('.remove').on('click', function (event) {
        //
        //     // console.log($(event.target).closest('img'));
        //
        //     let dataId = $(this).attr('data-id');
        //     let link = $(this).attr('data-name');
        //     console.log(link);
        //
        //     let data = new FormData;
        //     data.append('link', link);
        //     console.log( $('.remove').filter("[data-id='"+ link+"']"));
        //     $('.remove').filter("[data-id='"+ dataId+"']").hide();
        //     $('.upload-image-preview').filter("[data-id='"+ dataId+"']").hide();
        //     $.ajax({
        //             url: window.location.origin + '/trick/remove_media_preview',
        //             type: 'POST',
        //             cache: false,
        //             data: data,
        //             success: function (data) {
        //                 console.log(data);
        //             },
        //             contentType: false,
        //             processData: false
        //         }
        //     );
        //
        // });

    //
    //     $.each(inputFiles, function (index, file) {
    //         var fileCollection = new Array();
    //         fileCollection.push(file);
    //         console.log(file);
    //         var reader = new FileReader();
    //         var id = "id-" + Math.random().toString(16).slice(2);
    //         reader.readAsDataURL(file);
    //         console.log(file.name);
    //         reader.onload = function (e) {
    //             var template = '<div>' +
    //                 '<img class="upload-image-preview" data-id="' + id + ' " src="' + e.target.result + '" alt="image to upload" width="300" height="200" />' +
    //                 '<a href="#" class="remove" data-name="' + file.name + '" data-id="' + id + ' "><i class="fas fa-ban"></i></a>' +
    //                 '</div>'
    //             ;
    //             $('#images-to-upload').append(template);
    //         }
    //
    //     })

});
