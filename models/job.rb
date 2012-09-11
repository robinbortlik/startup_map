class Job
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :lat, type: Float
  field :lng, type: Float
  field :address, type: String
  field :phone , type: String
  field :email , type: String
  field :url, type: String 
  field :tags
  
  embeds_one :category, as: :categorizable
  belongs_to :startup
  
  validates :title, :description, :lat, :lng, :email, presence: true
end