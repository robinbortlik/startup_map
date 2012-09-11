if ENV['MONGOHQ_URL']
  Mongoid.load!(File.join(File.dirname(__FILE__), "mongoid.yml"), :production)
else
  Mongoid.load!(File.join(File.dirname(__FILE__), "mongoid.yml"), Sinatra::Application.environment)
end
Dir[File.dirname(__FILE__) + '/../models/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/../controllers/*.rb'].each {|file| require file }