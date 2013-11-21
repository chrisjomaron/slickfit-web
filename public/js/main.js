$(document).ready(function() {

  Handlebars.registerHelper('ifCond', function (v1, operator, v2, opts) {
      var isTrue = false;
      switch (operator) {
          case '===':
              isTrue = v1 === v2;
              break;
          case '!==':
              isTrue = v1 !== v2;
              break;
          case '<':
              isTrue = v1 < v2;
              break;
          case '<=':
              isTrue = v1 <= v2;
              break;
          case '>':
              isTrue = v1 > v2;
              break;
          case '>=':
              isTrue = v1 >= v2;
              break;
          case '||':
              isTrue = v1 || v2;
              break;
          case '&&':
              isTrue = v1 && v2;
              break;
      }
      return isTrue ? opts.fn(this) : opts.inverse(this);
  });
  
  var carDetailsView = new CarDetailsView("#car-details-container");
  var breakdownCoverView = new BreakdownCoverView("#breakdown-cover-container");
  var tyrePricesView = new TyrePricesView("#results-wrapper");
  var motCentresView = new MotCentresView("#MOT-results-list");
  
  $("#search").click(function(e) {
    e.preventDefault();

    $("#search-results").show();

    // carDetailsView.render();
    tyrePricesView.render();
    //breakdownCoverView.render();
  })


  $("#findMOT").click(function(e) {
    e.preventDefault();
    motCentresView.render();
  })


});