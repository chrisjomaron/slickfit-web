$(document).ready(function() {
	
  var carDetailsView = new CarDetailsView("#car-details-container");
  
  $("#search").click(function(e) {
    e.preventDefault();
    carDetailsView.init();
      

  })  

});