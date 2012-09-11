(function() {

  describe("App.Event", function() {
    return it("should validate address", function() {
      var event;
      event = new App.Event;
      expect(event.validate()).toBe(false);
      return expect(event.get('errors')[0]).toBe('Address is required');
    });
  });

}).call(this);
