App.News = Ember.Resource.extend(App.Markerable,
  resourceUrl:  '/news.json'
  resourceName: 'news'
  resourceProperties: ["_id", "title", "description", "lat", "lng", 
    "address", "url", "email", "tags", "startup_id"]
  icon: '/images/marker_news.png'
  
  validate: ->
    _errors = {} 
    _errors['address'] = 'is required' unless @get('address')?
    @setErrors(_errors)
)

