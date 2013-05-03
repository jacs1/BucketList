$(document).ready(function() {
    $('body').bind('ajax:success', function(e, data) {
     $('').append(data);
 });
});