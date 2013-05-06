var map;
var timer;
function initialize() {
        var mapOptions = {
          center: new google.maps.LatLng(15.7399977, 10),
          zoom: 3,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };

          map = new google.maps.Map(document.getElementById("map-canvas"),
            mapOptions);

         google.maps.event.addListener(map, "projection_changed", function(){
            console.log('hi');

  google.maps.event.addListener(map, "zoom_changed", function(){
    console.log(map.getZoom());
  });


  google.maps.event.addListener(map, "center_changed", function(){
    clearTimeout(timer);
    timer = setTimeout(function(){
    $.ajax({
      url: '/destinations',
      data: {
        latitude : map.getCenter().lat(),
        longitude: map.getCenter().lng()
      },
      contentType: 'text/javascript',
      beforeSend: function(xhr){
        xhr.setRequestHeader('accept', 'text/javascript');
      }

    });
  }, 2000);
  });


 });
};


function addMarker(latitude, longitude, title) {
	var marker = new google.maps.Marker({
        	position: new google.maps.LatLng(latitude, longitude),
         	map: map,
         	title: title
        });
  google.maps.event.addListener(marker, 'click', function() {
    map.setZoom(8);
    map.setCenter(marker.getPosition());
  });


     var message = [$(".name").first()[0]];
     console.log(message);
  var infowindow = new google.maps.InfoWindow({
    content: message[0]
      });
      google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(marker.get('map'), marker);

  });

}
