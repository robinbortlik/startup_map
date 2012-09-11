App.MapView.EventsMarkersView = Ember.CollectionView.extend(App.MarkerableCollectionView,
  contentBinding: Ember.Binding.oneWay("App.mapView.eventsController")
)

App.MapView.JobsMarkersView = Ember.CollectionView.extend(App.MarkerableCollectionView,
  contentBinding: Ember.Binding.oneWay("App.mapView.jobsController")
)

App.MapView.NewsMarkersView = Ember.CollectionView.extend(App.MarkerableCollectionView,
  contentBinding: Ember.Binding.oneWay("App.mapView.newsController")
)

App.MapView.StartupsMarkersView = Ember.CollectionView.extend(App.MarkerableCollectionView,
  contentBinding: Ember.Binding.oneWay("App.mapView.startupsController")
)


App.MapView.MarkerView = Ember.View.extend(
  template: null
  templateName: null
  render: ->
    marker = @get("content").getMarker()
    marker.setMap App.mapView.map
  destroy: ->
    marker = @get("content").getMarker()
    marker.setMap null
)