require 'rails_helper'

describe Article do
  it { should validate_presence_of :title }
  it { should have_many :texts }
end
