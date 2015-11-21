import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return Ember.$.ajax({
      url: '/first_app/api'
    });
  }
});

