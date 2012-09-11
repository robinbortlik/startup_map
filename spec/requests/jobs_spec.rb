require 'spec_helper'

describe "JobsController" do
  
  it 'get jobs json', :type => :request do 
    job = create(:job)
    job.reload
    visit '/jobs.json'
    page.body.should include job.to_json
  end
  
  it 'should create job', :type => :request do 
    job = build(:job)
    Job.count.should == 0
    post '/jobs.json', :job => job.attributes
    Job.count.should == 1
  end

end