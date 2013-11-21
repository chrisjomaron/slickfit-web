CarDetailsView = function(selector) {

	this.selector = selector;

    this.init = function() {
        
    	$.getJSON('/basic', function(data) {      
	      var source   = $("#car-details-template").html();
	      var template = Handlebars.compile(source);
	      $(selector).html(template(data));
	    })
	    .done(function(){
	    	console.log('Finished get car details');      
	    })
	    .fail(function(error) {
	      	console.log('Unable to get car details');
	    });   	
    }
    
}