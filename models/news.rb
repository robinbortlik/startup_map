class News
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :lat, type: Float
  field :lng, type: Float
  field :address, type: String
  field :url, type: String
  field :email, type: String
  field :tags, type: Array 
  
  belongs_to :startup
  embeds_one :category, as: :categorizable
  
  validates :title, :description, :lat, :lng, :email, presence: true
end