App.startupMonetization = Ember.Object.create({
  selected: null,
  content: [
    Ember.Object.create({title: "Service Fee", id: 1}),
    Ember.Object.create({title: "Subscription based", id: 2}),
    Ember.Object.create({title: "Retail", id: 3}),
    Ember.Object.create({title: "Transaction Fee", id: 4}),
    Ember.Object.create({title: "Advertising", id: 5}),
    Ember.Object.create({title: "Licence sales", id: 6}),
    Ember.Object.create({title: "Sales", id: 7}),
    Ember.Object.create({title: "Other/Unnown", id: 8})
  ]
})
