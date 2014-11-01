require 'rails_helper'

describe Book do
  it { should validate_presence_of :title }
  it { should validate_presence_of :year }
  it { should validate_numericality_of :year }
  it { should have_many :authors }
  it { should have_many :book_authors }
end
