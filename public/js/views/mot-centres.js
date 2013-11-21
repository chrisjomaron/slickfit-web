MotCentresView = function(selector) {

	this.selector = selector;

    this.render = function() {
     	
    	var postcode = $("#postcodeInput").val();	
    	var element = $(selector);
    	element.empty();
    	$("#loader").clone().appendTo(selector).show();
    	$("#MOT-results-wrapper").show();

		$.getJSON('/mot/' + postcode, function(data) {
	    	var source   = $("#mot-centres-template").html();
	    	var template = Handlebars.compile(source);
	    	data.postcode = postcode;
	    	$(selector).html(template(data));
	    })
	    .done(function(data){
	    	console.log('Finished getting MOT centres');
	    	google.maps.event.addDomListener(window, 'load', initializeMap(data));      
	    })
	    .fail(function(error) {
	      	console.log('Unable to get MOT centres');
	    });
	 }

	 function initializeMap(data) {

	 	var latitude = data.results[0].postcode.latitudelongitude.latitude;
	 	var longitude = data.results[0].postcode.latitudelongitude.longitude;

        var mapOptions = {
			center: new google.maps.LatLng(latitude, longitude),
			zoom: 12
		};

		var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

		for (var i = 0; i < data.results.length; i++) {
		    var lat = data.results[i].postcode.latitudelongitude.latitude;
		    var lon = data.results[i].postcode.latitudelongitude.longitude;
			
			var marker = new google.maps.Marker({
    		    position: new google.maps.LatLng(lat, lon),
    		    animation: google.maps.Animation.DROP,
    		    title:data.results[i].motcentre.centrename
    		});

    		marker.setMap(map);
		}
		
      }
    
}