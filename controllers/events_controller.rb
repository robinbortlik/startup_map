# Define Events actions
class Application < Sinatra::Base
  
  get '/events.json' do 
    content_type :json
    Event.all.to_json
  end 
  
  post '/events.json' do
    content_type :json
    event = Event.new(params[:event])
    event.save
    event.to_json(:methods => [:errors])
  end
  
end