class Book < ActiveRecord::Base
  validates_presence_of :title, :year
  validates_numericality_of :year, only_integer: true

  has_many :book_authors
  has_many :authors, through: :book_authors
end
