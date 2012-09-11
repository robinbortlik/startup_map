class Startup
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :lat, type: Float
  field :lng, type: Float
  field :address, type: String
  field :url, type: String
  field :email, type: String  
  field :found_date, type: Date
  field :tags, type: Array
  field :monetization, type: Integer
  field :phase, type: Integer
  
  embeds_many :team_members
  embeds_many :investors
  embeds_many :categories, as: :categorizable
  
  validates :name, :description, :address, :lat, :lng, :email, :url, :found_date, presence: true
end