require 'spec_helper'

describe Startup do
  
  it { should respond_to(:name) } 
  it { should respond_to(:url) }
  it { should respond_to(:email) }  
  it { should respond_to(:description) } 
  it { should respond_to(:address) } 
  it { should respond_to(:lat) } 
  it { should respond_to(:lng) } 
  it { should respond_to(:found_date) } 
  it { should respond_to(:team_members) }
  it { should respond_to(:investors) }  
  it { should respond_to(:categories) }
  it { should respond_to(:tags) }
  it { should respond_to(:monetization) }
  it { should respond_to(:phase) }
  
  it { should validate_presence_of(:name) } 
  it { should validate_presence_of(:url) } 
  it { should validate_presence_of(:lat) } 
  it { should validate_presence_of(:lng) } 
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:description) } 
  it { should validate_presence_of(:found_date) } 
end