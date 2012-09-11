FactoryGirl.define do

  factory :news do 
    title "Test news"
    description "Description"
    lat 1
    lng 1
    address "Ostrava, Czech Republic"
    email "email@example.com"
    url "http://example.com"
    tags ["tag1", "tag2"] 
    association :startup, factory: :startup
    
    after(:create) do |n|
      n.category = create(:category, categorizable: n)
      n.save!
    end
  
  end

end