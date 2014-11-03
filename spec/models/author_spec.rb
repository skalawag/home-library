require 'rails_helper'

describe Author do
  it { should validate_presence_of :name }
  it { should have_many :texts }
end
