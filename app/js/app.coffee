window.App = Ember.Application.create(
  ready: ->
    @mapView = new App.MapView
    @navigationView = new App.NavigationView
    @listView = new App.ListView
    @navigationView.append()
    @mapView.append()
    @listView.append()
    
  alertAppFail: ->
    alert("We are sorry but something went wrong")
    
  alertObjectErrors: (obj)->
    tmp = []
    tmp.push("#{k} #{v}") for k,v of obj.errors
    alert(tmp.join(", "))
)












