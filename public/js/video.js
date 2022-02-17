document.addEventListener("DOMContentLoaded", () => {
    $('#trick_videos').on('change', function () {
        let url = document.getElementById('trick_videos').value;

        // console.log(url);
        // console.log(isValidURL(url));
        if (isValidURL(url) === true) {

            if (url.includes('embed/')) {
                addVideoPreview(url);
            } else if (url.includes('watch?v=')) {
                let embedUrl = createYoutubeEmbedLink(url);
                console.log(embedUrl);
                addVideoPreview(embedUrl);
            } else if (url.includes('dailymotion.com/video/')){
                let embedUrl = createDailymotionEmbedLink(url);
                console.log(embedUrl);
                addVideoPreview(embedUrl);
            }
        } else {
            alert('Saisissez correcte l\'URL')
        }
    });
})

function isValidURL(str) {
    let pattern = new RegExp('^(https?:\\/\\/)?' + // protocol
        '((([a-z\\d]([a-z\\d-]*[a-z\\d])*)\\.)+[a-z]{2,}|' + // domain name
        '((\\d{1,3}\\.){3}\\d{1,3}))' + // OR ip (v4) address
        '(\\:\\d+)?(\\/[-a-z\\d%_.~+]*)*' + // port and path
        '(\\?[;&a-z\\d%_.~+=-]*)?' + // query string
        '(\\#[-a-z\\d_]*)?$', 'i'); // fragment locator
    return !!pattern.test(str);
}

function createYoutubeEmbedLink(link) {
    let splitLink = link.split('watch?v=');
    return splitLink.join("embed/");
}

function addVideoPreview(link) {
    let preview = $('#video-preview');
    if (preview.length) {
        preview.attr('src', $(this).val());
    } else {
        let videoPreview = $(' <iframe id="video-preview" width="300" height="200" src="' + link + '" />');
        videoPreview.appendTo('.trick-videos');
    }
}

function createDailymotionEmbedLink(link) {
    let splitLink = link.split('dailymotion.com/video/');
    return splitLink.join("dailymotion.com/embed/video/");
}