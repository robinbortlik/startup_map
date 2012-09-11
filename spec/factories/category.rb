FactoryGirl.define do
  
  factory :category do
    name "Test category"
    association :categorizable, factory: :event
  end
  
end