require 'rails_helper'

describe Book do
  it { should validate_presence_of :title }
  it { should validate_presence_of :year }
  it { should validate_numericality_of :year }
  it { should have_many :authors }
  it { should have_many :book_authors }

  it "should be invalid with year less than 999" do
    expect(Fabricate.build(:book, year: 888)).not_to be_valid
  end

  it "should have a year less than 2016" do
    expect(Fabricate.build(:book, year: 2017)).not_to be_valid
  end
end
