class Book < ActiveRecord::Base
  validates_presence_of :title, :year
  validates_numericality_of :year, only_integer: true, greater_than: 999, less_than: 2016

  has_many :texts, as: :authorable

  def authors
    self.texts.map { |text| Author.find(text[:author_id]) }
  end
end
