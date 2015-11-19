import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return Ember.$.ajax({
      url: '/api/first_app'
    });
  }
});

