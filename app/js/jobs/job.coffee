App.Job = Ember.Resource.extend(App.Markerable,
  resourceUrl:  '/jobs.json'
  resourceName: 'job'
  resourceProperties: ["_id", "title", "description", "lat", "lng", 
    "address", "phone", "email", "url", "tags", "startup_id"]
  icon: '/images/marker_job.png'

  validate: ->
    _errors = {} 
    _errors['address'] = 'is required' unless @get('address')?
    @setErrors(_errors)
)

