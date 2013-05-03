$(document).ready(function() {
 $('body').bind('ajax:success', function(e, data) {
  var itemId = $('<div>').append(data).children().first().data("item-id");
   $('.comments' + itemId).append(data);
 });
});
//e stands for the event ajax:success
//e is something that ajax gives you