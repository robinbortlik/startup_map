class Organizer
  include Mongoid::Document
  field :name, type: String
  embedded_in :event
  
  validates :name, presence: true
end