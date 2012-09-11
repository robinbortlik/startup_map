FactoryGirl.define do
  
  factory :investor do
    name "Test"
    share_amount 20.0
    association :startup, factory: :startup
  end
  
end