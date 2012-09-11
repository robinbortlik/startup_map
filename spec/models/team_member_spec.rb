require 'spec_helper'

describe TeamMember do
  it { should respond_to(:name) }
  it { should respond_to(:share_amount) }
  it { should respond_to(:role) }
  it { should validate_presence_of(:name) }
end