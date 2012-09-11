# Define Startups actions
class Application < Sinatra::Base

  get '/startups.json' do 
    content_type :json
    Startup.all.to_json
  end 
  
  post '/startups.json' do 
    content_type :json
    startup = Startup.new(params[:startup])
    startup.save
    startup.to_json(:methods => [:errors])
  end
  
end