$(document).ready(function(){
    function updateDownloadCount() {
        $.getJSON("//files.multimc.org/stats/download_count.json", function(data) {
            var count = data["count"];
            if(count && count > 0) {
                $('#download_count').html(count);
            }
        });
    }

    updateDownloadCount();
    setInterval(updateDownloadCount, 60 * 1000);
});