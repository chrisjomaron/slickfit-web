MotCentresView = function(selector) {

	this.selector = selector;

    this.render = function() {
     	var source   = $("#mot-centres-template").html();
      	var template = Handlebars.compile(source);
      	$(selector).html(template());
	 }
    
}