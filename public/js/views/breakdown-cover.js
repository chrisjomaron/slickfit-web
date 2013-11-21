BreakdownCoverView = function(selector) {
	this.selector = selector;

    this.render = function() {        
    	var url = $("#vehicle-reg").val().replace(" ", "");
    	$.getJSON('/break-down-cover/' + url, function(data) {      
	      var source   = $("#break-down-cover-template").html();
	      var template = Handlebars.compile(source);
	      data.url = url;
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