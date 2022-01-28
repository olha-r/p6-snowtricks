/*window.onload = () => {
    let links = document.querySelectorAll("[data-delete]")

    for (link of links){
        link.addEventListener("click", function(e){
            e.preventDefault()
            if(confirm("Supprimer?")){

            }
        })
    }
}

 */
document.getElementById('js-img-delete').addEventListener('click', onClickBtnDeleteImage);
function onClickBtnDeleteImage(event)
{
    event.preventDefault();


        const xhr = new XMLHttpRequest();
        xhr.open('GET', 'demo.txt', true);

        console.log(xhr);

}
