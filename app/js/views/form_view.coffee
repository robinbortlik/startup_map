App.FormView = Ember.View.extend(
  didInsertElement: ->
    $('.datepicker').datepicker();
  getLatLng: (callback)->
    geocoder = new google.maps.Geocoder()
    geocoder.geocode 'address': App.form.get("address") , (results, status) ->
      callback(results[0].geometry.location) if results.length > 0
      
  saveObject: (obj, collection)->
    obj.set(prop, @get(prop)) for prop in obj.resourceProperties
    if obj.isValid()
      @getLatLng (location) ->
        obj.set("lat", location.lat())
        obj.set("lng", location.lng())
        obj.saveResource()
          .done (response) ->
            if response.errors? && !$.isEmptyObject(response.errors)
              App.alertObjectErrors(response)
            else
              collection.content.pushObject(obj)
              App.form.destroy()
              App.mapView.map.setCenter(location)
          .fail (response) =>
            App.alertAppFail()    
    else
      App.alertObjectErrors(obj)
)

App.EventFormView = App.FormView.extend( 
  templateName: 'event-form'
  submit: ->
    event = new App.Event
    @saveObject(event, App.mapView.eventsController)
)

App.StartupFormView = App.FormView.extend(
  templateName: 'startup-form'
  submit: ->
    startup = new App.Startup
    @saveObject(startup, App.mapView.startupsController)
)

App.NewsFormView = App.FormView.extend(
  templateName: 'news-form'
  submit: ->
    news = new App.News
    @saveObject(news, App.mapView.newsController)
)

App.JobFormView = App.FormView.extend(
  templateName: 'job-form'
  submit: ->
    job = new App.Job
    @saveObject(job, App.mapView.jobsController)
)