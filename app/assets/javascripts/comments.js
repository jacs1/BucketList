$(document).ready(function() {
	$('body').bind('ajax:success', function(e, data) {
		$('.comments').append(data);
	});
});

//e stands for the event ajax:success
//e is something that ajax gives you