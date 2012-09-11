App.Event = Ember.Resource.extend(App.Markerable,
  resourceUrl:  '/events.json'
  resourceName: 'event'
  resourceProperties: ["_id", "name", "description", "lat", "lng", "address", "tags", 
    "from_date", "start_time", "to_date", "end_time", "repeat", "registration_required", 
    "registration_url", "registration_deadline", "url", "email"]
  icon: '/images/marker_event.png'
  
  validate: ->
    _errors = {} 
    _errors['address'] = 'is required' unless @get('address')?
    @setErrors(_errors)
)

