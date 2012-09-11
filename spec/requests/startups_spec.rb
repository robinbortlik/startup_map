require 'spec_helper'

describe "StartupsController" do
  
  it 'get startups json', :type => :request do 
    startup = create(:startup)
    startup.reload
    visit '/startups.json'
    page.body.should include startup.to_json
  end
  
  it 'should create startup', :type => :request do 
    startup = build(:startup)
    Startup.count.should == 0
    post '/startups.json', :startup => startup.attributes
    Startup.count.should == 1
  end

end