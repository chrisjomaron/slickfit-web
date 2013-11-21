$(document).ready(function() {
	
  var carDetailsView = new CarDetailsView("#car-details-container");
  var tyrePricesView = new TyrePricesView("#tyre-prices-container");
  var motCentresView = new MotCentresView("#mot-centres-container");

  $("#search").click(function(e) {
    e.preventDefault();
    carDetailsView.render();
    tyrePricesView.render();
    motCentresView.render();
  })  

});