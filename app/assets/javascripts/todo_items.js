$(document).ready(function() {

  $('body').bind("ajax:success", function(e,data) {
	var itemId = $('<div>').append(data).children().first().data("item-id");
	console.log(itemId);
		if(itemId){
	$('.destinations' + itemId).append(data);
}


});



});