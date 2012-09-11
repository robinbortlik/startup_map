class Event
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :lat, type: Float
  field :lng, type: Float
  field :address, type: String
  field :tags, type: Array
  field :from_datetime, type: DateTime
  field :to_datetime, type: DateTime
  field :repeat, type: Integer
  field :registration_required, type: Boolean
  field :registration_url, type: String  
  field :registration_deadline, type: Date
  field :url, type: String
  field :email, type: String 
  
  embeds_one :organizer
  embeds_many :categories, as: :categorizable
  
  validates :name, :lat, :lng, :address, :description, :from_datetime, :to_datetime, presence: true
end