require 'spec_helper'

describe Event do
  
  it { should respond_to(:name) } 
  it { should respond_to(:description) } 
  it { should respond_to(:address) } 
  it { should respond_to(:tags) } 
  it { should respond_to(:categories) } 
  it { should respond_to(:from_datetime) }
  it { should respond_to(:to_datetime) } 
  it { should respond_to(:repeat) }
  it { should respond_to(:registration_required) }
  it { should respond_to(:registration_url) }    
  it { should respond_to(:registration_deadline) } 
  it { should respond_to(:url) } 
  it { should respond_to(:email) } 
  it { should respond_to(:organizer) } 
  it { should respond_to(:lat) } 
  it { should respond_to(:lng) } 
  
  it {should validate_presence_of :name}  
  it {should validate_presence_of :address}  
  it {should validate_presence_of :description}  
  it {should validate_presence_of :lat}  
  it {should validate_presence_of :lng}  
  it {should validate_presence_of :from_datetime}
  it {should validate_presence_of :to_datetime}  
end