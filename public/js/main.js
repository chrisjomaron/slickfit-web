$(document).ready(function() {
  var carDetailsView = new CarDetailsView("#car-details-container");
  var breakdownCoverView = new BreakdownCoverView("#breakdown-cover-container");
  
  $("#search").click(function(e) {
    e.preventDefault();
    carDetailsView.init();
    breakdownCoverView.init();
  })  
});