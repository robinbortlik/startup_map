class Category
  include Mongoid::Document
  field :name, type: String
  embedded_in :categorizable, polymorphic: true
  
  validates :name, presence: true
end