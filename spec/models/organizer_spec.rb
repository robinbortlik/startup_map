require 'spec_helper'

describe Organizer do
  it { should respond_to(:name) }
  it { should validate_presence_of(:name) }
end