require 'spec_helper'

describe "EventsController" do
  
  it 'get events json', :type => :request do 
    event = create(:event)
    event.reload
    visit '/events.json'
    page.body.should include event.to_json
  end
  
  it 'should create event', :type => :request do 
    event = build(:event)
    Event.count.should == 0
    post '/events.json', :event => event.attributes
    Event.count.should == 1
  end

end