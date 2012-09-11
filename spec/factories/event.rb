FactoryGirl.define do
  
  factory :event do
    name "Test"
    description "Description"
    address "Ostrava, Czech Republic"
    tags ["tag1", "tag2"]
    from_datetime Time.now
    to_datetime Time.now
    repeat 1
    registration_required true
    registration_url "http://example.com"
    registration_deadline  Date.today
    url "http://example.com"
    email "email@example.com"
    lat 1
    lng 1
    
    after(:create) do |e|
      e.organizer = create(:organizer, :event => e)
      e.categories = [create(:category, :categorizable => e)]
      e.save! 
    end
    
  end
  
end