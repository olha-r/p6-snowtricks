document.addEventListener("DOMContentLoaded", () => {
    $('#trick_videos').on('change', function() {
        let preview = $('#video-preview');
        console.log(preview)
        if(preview.length) {
            preview.attr('src', $(this).val());
        } else {
            console.log(this)
            $(this).after($('<iframe id="video-preview" width="300" height="200" src="' + $(this).val() + '" />'));
        }
    });
})
