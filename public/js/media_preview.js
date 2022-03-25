//file collection array

var fileCollection = new Array();
$('#trick_medias').on('change', function () {

    let inputFiles = document.getElementById('trick_medias');
    var files = inputFiles.files
    console.log(files)

    $.each(files, function (index, file) {
        fileCollection.push(file);
        var reader = new FileReader();
        var id = "id-" + Math.random().toString(16).slice(2);
        reader.readAsDataURL(file);
        var form_data = new FormData();
            form_data.append("medias[]", file);

        reader.onload = function (e) {
            var template = '<div>'+
                '<img class="upload-image-preview" id="'+ id +'" src="' + e.target.result + '" alt="image to upload" width="300" height="200" />' +
                '<a href="#" class="remove"><i class="fas fa-ban"></i></a>'+
                '</div>'
            ;
            $('#images-to-upload').append(template);
        }

    })
    // let fileArray = Array.from(files);
    // console.log(fileArray);
    console.log(fileCollection);

})



$(document).on('click','.remove', function () {
        $(this).parent('div').remove();
    fileCollection.pop();
    console.log(fileCollection);
})

