BreakdownCoverView = function(selector) {
	this.selector = selector;

    this.render = function() {        
    	var url = $("#vehicle-reg").val().replace(" ", "");
    	var element = $(selector);
    	
    	element.empty();
    	$("#loader").clone().appendTo(selector).show();
    	$.getJSON('/break-down-cover/' + url, function(data) {      
	      var source   = $("#break-down-cover-template").html();
	      var template = Handlebars.compile(source);
	      data.url = url;
	      data.results = data.results.slice(0,3);
	      element.html(template(data));
	    })
	    .done(function(){
	    	console.log('Finished get breakdown cover');      
	    })
	    .fail(function(error) {
	      	console.log('Unable to get breakdown cover');
	    });   	
    }
    
}