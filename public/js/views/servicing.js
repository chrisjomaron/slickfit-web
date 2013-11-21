ServicingView = function(selector) {
	this.selector = selector;

    this.render = function() {        
    	var url = $("#vehicle-reg").val().replace(" ", "") + '/' + 'ch53uz';
    	var element = $(selector);
    	
    	element.empty();
    	$("#loader").clone().appendTo(selector).show();
    	$.getJSON('/servicing/' + url, function(data) {      
	      var source   = $("#servicing-template").html();
	      var template = Handlebars.compile(source);
	      data.url = url;
	      element.html(template(data));
	    })
	    .done(function(){
	    	console.log('Finished get servicing');      
	    })
	    .fail(function(error) {
	      	console.log('Unable to get servicing');
	    });   	
    }
    
}