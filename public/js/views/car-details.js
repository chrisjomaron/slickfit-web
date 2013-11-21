CarDetailsView = function(selector) {

	this.selector = selector;

    this.render = function() {
        var url = '/car-details/' + $("#vehicle-reg").val().replace(" ", "");
        var element = $(selector);

        element.empty();
        $("#loader").clone().appendTo(selector).show();
    	$.getJSON(url, function(data) {      
	      var source   = $("#car-details-template").html();
	      var template = Handlebars.compile(source);
	      element.html(template(data));
	    })
	    .done(function(){
	    	console.log('Finished get car details');      
	    })
	    .fail(function(error) {
	      	console.log('Unable to get car details');
	    });   	
    }
    
}