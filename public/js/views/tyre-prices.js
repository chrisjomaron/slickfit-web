TyrePricesView = function(selector) {

	this.selector = selector;
	
    this.render = function() {
        var url = $("#vehicle-reg").val();
    	$.getJSON('/tyre-prices/' + url, function(data) {
	      var source   = $("#tyre-prices-template").html();
	      var template = Handlebars.compile(source);
	      $(selector).html(template(data));
	    })
	    .done(function(){
	    	console.log('Finished getting tyre prices');      
	    })
	    .fail(function(error) {
	      	console.log('Unable to get tyre prices');
	    });   	
    }
}