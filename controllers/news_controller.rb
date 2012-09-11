# Define News actions
class Application < Sinatra::Base

  get '/news.json' do 
    content_type :json
    News.all.to_json
  end 
  
  post '/news.json' do 
    content_type :json
    news = News.new(params[:news])
    news.save
    news.to_json(:methods => [:errors])
  end
  
end