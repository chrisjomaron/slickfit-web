BreakdownCoverView = function(selector) {
	this.selector = selector;

    this.init = function() {        
    	$.getJSON('/breakdown', function(data) {      
	      var source   = $("#breakdown-cover-template").html();
	      var template = Handlebars.compile(source);
	      $(selector).html(template(data));
	    })
	    .done(function(){
	    	console.log('Finished get breakdown cover');      
	    })
	    .fail(function(error) {
	      	console.log('Unable to get breakdown cover');
	    });   	
    }
    
}