describe "App.Event", ->
  
  it "should validate address", ->
    event = new App.Event
    expect(event.validate()).toBe(false)
    expect(event.get('errors')[0]).toBe('Address is required')