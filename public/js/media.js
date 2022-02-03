$('.delete-img').on('click', function (event) {
    let img = $('.delete-img').attr('id');
    console.log(img);
    if (confirm('Supprimer?')) {
        $.ajax({
            url: window.location.origin + 'media/' + img,
            type: "GET",
            cache: false,
            success: function (data) {
                console.log(data);
                if (data.success === 1) {
                    $('.img-'+ img).remove();
                }
            },
            contentType: false,
            processData: false
        });
    }
});


// window.onload = () => {
//     let links = document.querySelectorAll("[data-delete]")
//
//     for (link of links){
//         link.addEventListener("click", function(e){
//             e.preventDefault()
//             if(confirm("Supprimer?")){
//
//             }
//         })
//     }
// }
