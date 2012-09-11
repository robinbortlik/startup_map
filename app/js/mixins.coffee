App.Markerable = Ember.Mixin.create(
  getMarker: ->
    unless (marker = @get("marker"))?
      marker = new google.maps.Marker
        position: new google.maps.LatLng(@get("lat"), @get("lng"))
        icon: @get("icon")
      @set "marker", marker
    marker
    
  validate: ->
    
  isValid: ->
    !@validate()?
    
  setErrors: (errors = {}) ->
    @set('errors', errors) 
    if !$.isEmptyObject(errors)
      tmp = []
      tmp.push("#{k} #{v}") for k,v of errors 
)

App.MarkerableCollectionView = Ember.Mixin.create(
  template: null
  templateName: null
  itemViewClass: "App.MapView.MarkerView"
)


