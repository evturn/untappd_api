var BeerList = Backbone.Collection.extend({
  model: Beer,
  url: '/api/beers'
});