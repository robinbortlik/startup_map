FactoryGirl.define do

  factory :job do 
    title "Test job"
    description "Description"
    lat 1
    lng 1
    address "Ostrava, Czech Republic"
    phone "7398290292"
    email "email@example.com"
    url "http://example.com"
    tags ["tag1", "tag2"] 
    association :startup, factory: :startup
    
    after(:create) do |j|
      j.category = create(:category, categorizable: j)
      j.save!
    end
  
  end

end