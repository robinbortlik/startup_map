class TeamMember
  include Mongoid::Document
  field :name, type: String
  field :share_amount, type: Float
  field :role, type: Integer
  embedded_in :startup
  
  validates :name, presence: true
end