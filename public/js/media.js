
window.onload = () => {
    $('.delete-img').click(function (event) {
        event.preventDefault();
        let img = $('.delete-img').attr('id');
        if (confirm('Supprimer?')) {
            $.ajax({
                dataType: "json",
                url: "{{ path('media_delete'),{'id': media.id})}}",
                type: "POST",
                data:
                   'media_id='+img,
                cache: false,
                success: function (data) {
                    if (data === 1){
                        img.remove();
                    }
                },
                contentType: false,
                processData: false
            });
        }
    });
}




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
