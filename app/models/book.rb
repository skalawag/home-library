class Book < ActiveRecord::Base
  validates_presence_of :title, :year
  validates_numericality_of :year, only_integer: true, greater_than: 999, less_than: 2016

  has_many :book_authors
  has_many :authors, through: :book_authors
end
