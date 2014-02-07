$(document).ready(function(){
    function updateStats() {
        $.getJSON("//files.multimc.org/stats/download_count.json", function(data) {
            var count = data["count"];
            if(count && count > 0) {
                $('#download_count').html(count);
            }

            var startups = data["startups"];
            if(startups && startups > 0) {
                $('#startups_count').html(startups);
            }
        });
    }

    updateStats();
    setInterval(updateStats, 60 * 1000);
});