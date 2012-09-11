class Investor
  include Mongoid::Document
  field :name, type: String
  field :share_amount, type: Float
  embedded_in :startup
  
  validates :name, presence: true
end