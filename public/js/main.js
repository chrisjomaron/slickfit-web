$(document).ready(function() {
	
  $("#search").click(function(e) {

    e.preventDefault();

    $.getJSON('/basic', function(data) {      
      var source   = $("#basic-template").html();
      var template = Handlebars.compile(source);
      $("#tyre-prices-container").html(template(data));
    })
    .done(function(){
          
    })
    .fail(function(error) {
      alert(error);
    });
  })  

});