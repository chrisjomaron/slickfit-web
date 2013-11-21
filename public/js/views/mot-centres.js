MotCentresView = function(selector) {

	this.selector = selector;

    this.render = function() {
     	
    	var postcode = $("#postcodeInput").val();	

		$.getJSON('/fitting-stations/' + postcode, function(data) {
	    	var source   = $("#mot-centres-template").html();
	    	var template = Handlebars.compile(source);
	    	$(selector).html(template(data));

	    })
	    .done(function(){
	    	console.log('Finished getting fitting stations');      
	    })
	    .fail(function(error) {
	      	console.log('Unable to get fitting stations');
	    });
	 }
    
}