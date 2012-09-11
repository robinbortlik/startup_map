App.ListView = Ember.View.extend(
  templateName: 'list'
  elementId: 'list'
  classNames: ['well', 'span4']
)

App.ListItemView = Ember.View.extend(
  templateName: 'list-item'
  click: ->
    @detail()
  detail: ->
    App.detailView.destroy() if App.detailView
    App.detailView = new App.DetailView
    App.detailView.set("context", @get("content"))
    App.detailView.append()
)

App.ListItemsView = Ember.CollectionView.extend(
  tagName: 'ul'
  itemViewClass: "App.ListItemView"
)