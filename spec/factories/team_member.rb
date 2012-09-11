FactoryGirl.define do
  
  factory :team_member do
    name "Test"
    share_amount 20.0
    role 1
    association :startup, factory: :startup
  end
  
end