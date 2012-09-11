# Define Jobs actions
class Application < Sinatra::Base

  get '/jobs.json' do 
    content_type :json
    Job.all.to_json
  end 
  
  post '/jobs.json' do 
    content_type :json
    job = Job.new(params[:job])
    job.save
    job.to_json(:methods => [:errors])
  end
  
end