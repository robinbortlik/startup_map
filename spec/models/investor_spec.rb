require 'spec_helper'

describe Investor do
  it { should respond_to(:name) }
  it { should respond_to(:share_amount) }
  it { should validate_presence_of(:name) }
end