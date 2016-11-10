
$(document).ready(function (){

    function initialize() {
      var myCoords = new google.maps.LatLng(latitude,longitude);
			
			var mapOptions = {
			   center: myCoords,
			   zoom: 15,
			   scrollwheel: false  
			};
 
      var map = new google.maps.Map(document.getElementById('destination-map'), mapOptions);    
     
      var marker = new google.maps.Marker({
  		position: myCoords,
  		map: map,
		  title: "#{country},#{city}",
		  animation: google.maps.Animation.DROP
				});
  
var contentString = '<h2>' + address + '</h2>';

var infowindow = new google.maps.InfoWindow({content: contentString});
 google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
 });
}
    google.maps.event.addDomListener(window, 'load', initialize);
});
