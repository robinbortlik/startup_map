App.MapView = Ember.View.extend(
  elementId: "map_canvas"
  init: ->
    @_super()
    @loadData()
  didInsertElement: ->
    @initializeMap()
    @addMarkers()

  initializeMap: ->
    mapOptions =
      center: new google.maps.LatLng(49.8209226, 18.262524299999995)
      zoom: 8
      disableDefaultUI: true
      panControl: true
      zoomControl: true
      scaleControl: true
      mapTypeId: google.maps.MapTypeId.ROADMAP

    @map = new google.maps.Map(@get("element"), mapOptions)
    
  loadData: ->
    @eventsController = new App.EventsController
    @eventsController.findAll()
    @jobsController = new App.JobsController
    @jobsController.findAll()
    @newsController = new App.NewsController
    @newsController.findAll()
    @startupsController = new App.StartupsController
    @startupsController.findAll()
      
  addMarkers: ->
    @eventsMarkersView = new App.MapView.EventsMarkersView
    @eventsMarkersView.append()
    @jobsMarkersView = new App.MapView.JobsMarkersView
    @jobsMarkersView.append()
    @newsMarkersView = new App.MapView.NewsMarkersView
    @newsMarkersView.append()
    @startupsMarkersView = new App.MapView.StartupsMarkersView
    @startupsMarkersView.append()
  
 )