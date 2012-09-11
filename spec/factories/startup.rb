FactoryGirl.define do

  factory :startup do 
    name "Test startup"
    description "Description"
    lat 1
    lng 1
    address "Ostrava, Czech Republic"
    email "email@example.com"
    url "http://example.com"
    found_date Date.today
    tags ["tag1", "tag2"] 
    monetization 200000
    phase 1
    
    after(:create) do |s|
      s.categories = [create(:category, categorizable: s)]
      s.investors = [create(:investor,startup: s)]
      s.team_members = [create(:team_member, startup: s)]
      s.save!
    end
  
  end

end