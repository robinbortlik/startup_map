App.NavigationView = Ember.View.extend(
  templateName: 'navigation'
  classNames: ['navbar']
  
  newEvent: ->
    App.form.destroy() if App.form
    App.form = new App.EventFormView
    App.form.append()
  newJob: ->
    App.form.destroy() if App.form
    App.form = new App.JobFormView
    App.form.append()
  newNews: ->
    App.form.destroy() if App.form
    App.form = new App.NewsFormView
    App.form.append()
  newStartup: ->
    App.form.destroy() if App.form
    App.form = new App.StartupFormView
    App.form.append()

  filterEvents: ->
    App.mapView.eventsMarkersView.set("content",  App.mapView.eventsController.get("content"))
    App.mapView.jobsMarkersView.set("content", [])
    App.mapView.newsMarkersView.set("content", [])
    App.mapView.startupsMarkersView.set("content", [])
    
  filterJobs: ->
    App.mapView.eventsMarkersView.set("content",  [])
    App.mapView.jobsMarkersView.set("content", App.mapView.jobsController.get("content"))
    App.mapView.newsMarkersView.set("content", [])
    App.mapView.startupsMarkersView.set("content", [])
    
  filterNews: ->
    App.mapView.eventsMarkersView.set("content",  [])
    App.mapView.jobsMarkersView.set("content", [])
    App.mapView.newsMarkersView.set("content", App.mapView.newsController.get("content"))
    App.mapView.startupsMarkersView.set("content", [])
    
  filterStartups: ->
    App.mapView.eventsMarkersView.set("content",  [])
    App.mapView.jobsMarkersView.set("content", [])
    App.mapView.newsMarkersView.set("content", [])
    App.mapView.startupsMarkersView.set("content", App.mapView.startupsController.get("content"))

  clearFilter: ->
    App.mapView.eventsMarkersView.set("content",  App.mapView.eventsController.get("content"))
    App.mapView.jobsMarkersView.set("content", App.mapView.jobsController.get("content"))
    App.mapView.newsMarkersView.set("content", App.mapView.newsController.get("content"))
    App.mapView.startupsMarkersView.set("content", App.mapView.startupsController.get("content"))
)

App.CounterView = Ember.View.extend(
  classNames: ['label','label-important']
  templateName: 'counter'
  tagName: 'span'
)
