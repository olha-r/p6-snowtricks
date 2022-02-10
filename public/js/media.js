$('.delete-img').on('click' , function (event) {
    let img = $(this).attr('id');
    console.log(img);
    console.log(window.location);
    // if (confirm('Supprimer?')) {
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
    // }
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
