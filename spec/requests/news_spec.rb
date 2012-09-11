require 'spec_helper'

describe "NewsController" do
  
  it 'get news json', :type => :request do 
    news = create(:news)
    news.reload
    visit '/news.json'
    page.body.should include news.to_json
  end
  
  it 'should create news', :type => :request do 
    news = build(:news)
    News.count.should == 0
    post '/news.json', :news => news.attributes
    News.count.should == 1
  end

end