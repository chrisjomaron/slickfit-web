var AppView = Backbone.View.extend({
      // el - stands for element. Every view has a element associate in with HTML 
      //      content will be rendered.
      el: '#search-container',
      template: _.template("<h2><%= Title %></h2><input type='text' id='vehicle_reg'><button id='search'>Search</button>"),
      initialize: function(){
        this.render();
      },
      // $el - it's a cached jQuery object (el), in which you can use jQuery functions 
      //       to push content. Like the Hello World in this case.
      render: function(){
        this.$el.html(this.template({Title: 'SlickFit Tyres'}));
      }
    });

$(document).ready(function() {
	var appView = new AppView();
});