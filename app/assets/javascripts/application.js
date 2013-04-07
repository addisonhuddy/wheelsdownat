// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).ready(function(){
	var markersArray = [];
	var lastMarker = null;
	Gmaps.map.callback = function() {
	    google.maps.event.addListener(Gmaps.map.serviceObject, 'click', function(event) {
	    	clearOverlays();
	    	$("#ride_latitude").val(event.latLng.Ya);
	    	$("#ride_longitude").val(event.latLng.Za);
        $("#clicktopost").fadeOut(500);
        $("#rideform").fadeIn(1500);
	      placeMarker(event.latLng);
	      // updateFormLocation(event.latLng);
	    });
	};

	// Add a marker with an open infowindow
  function placeMarker(latLng) {
      var marker = new google.maps.Marker({
          position: latLng, 
          map: Gmaps.map.serviceObject,
          draggable: true
      });
      markersArray.push(marker);
      lastMarker = marker;
  };
  
  // Removes the overlays from the map
  function clearOverlays() {
    // if (markersArray) {
    //   for (var i = 0; i < markersArray.length; i++ ) {
    //     markersArray[i].setMap(null);
    //   }
    // }
    // markersArray.length = 0;
    if (lastMarker){
    	lastMarker.setMap(null);
    }
  };
});
