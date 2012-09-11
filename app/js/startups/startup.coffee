App.Startup = Ember.Resource.extend(App.Markerable,
  resourceUrl:  '/startups.json'
  resourceName: 'startup'
  resourceProperties: ["_id", "name", "description", "lat", "lng", "address", 
    "url", "email", "found_date", "tags", "monetization", "phase"]
  icon: '/images/marker_startup.png'
  
  validate: ->
    _errors = {} 
    _errors['address'] = 'is required' unless @get('address')?
    @setErrors(_errors)
)

