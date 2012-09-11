FactoryGirl.define do
  
  factory :organizer do
    name "Test organizer"
    association :event, factory: :event
  end
  
end