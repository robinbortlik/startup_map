require 'spec_helper'

describe Job do
  
  it { should respond_to(:title) } 
  it { should respond_to(:description) } 
  it { should respond_to(:startup) } 
  it { should respond_to(:phone) } 
  it { should respond_to(:email) } 
  it { should respond_to(:url) }
  it { should respond_to(:category) }  
  it { should respond_to(:tags) }
  it { should respond_to(:address) }
  it { should respond_to(:lat) } 
  it { should respond_to(:lng) } 
    
  it { should validate_presence_of(:title) } 
  it { should validate_presence_of(:description) } 
  it { should validate_presence_of(:lat) } 
  it { should validate_presence_of(:lng) } 
  it { should validate_presence_of(:email) } 
end