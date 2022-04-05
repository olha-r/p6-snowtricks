document.addEventListener("DOMContentLoaded", () => {
    $('#trick_videos').on('change', function () {

        let url = document.getElementById('trick_videos').value;
        // console.log(url);
        // console.log(isValidURL(url));
        if (isValidURL(url) === true) {

            if (url.includes('embed/')) {
                var embedUrl = url;
                    addVideoPreview(embedUrl);
            } else if (url.includes('watch?v=')) {
                var embedUrl = createYoutubeEmbedLink(url);
                // console.log(embedUrl);
                addVideoPreview(embedUrl);
            } else if (url.includes('dailymotion.com/video/')) {
               var embedUrl = createDailymotionEmbedLink(url);
                // console.log(embedUrl);
                addVideoPreview(embedUrl);
            }

            let formData = new FormData();
            formData.append('videos', embedUrl);

            $.ajax({
                url: window.location.origin + '/trick/add_video',
                type: 'POST',
                cache: false,
                data: formData,
                success: function (data) {
                    console.log(data);
                },
                contentType: false,
                processData: false
            });


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

function createDailymotionEmbedLink(link) {
    let splitLink = link.split('dailymotion.com/video/');
    return splitLink.join("dailymotion.com/embed/video/");
}

function addVideoPreview(link) {
    let preview = $('#video-preview');
    if (preview.length) {
        preview.attr('src', $(this).val());
    } else {
        var uniqueId = "id" + Math.random().toString(16).slice(2);
        let videoPreviewDiv = $('<div></div>')
        let videoPreview = $('<iframe class="upload-video-preview" id="'+ uniqueId + '" data-link="'+ link +'" width="300" height="200" src="' + link + '" />');
        let btnPreview = $( '<a class="btn btn-video-preview" data-link="'+ link +'"><i class="fas fa-ban"></i></a>');
        // console.log(uniqueId);
        // videoPreview.appendTo('.videos-to-upload');
        // btnPreview.appendTo('.videos-to-upload');
        videoPreviewDiv.appendTo('.videos-to-upload');
        videoPreview.appendTo(videoPreviewDiv);
        btnPreview.appendTo(videoPreviewDiv);
        document.getElementById("trick_videos").value = "";
    }
}


