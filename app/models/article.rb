class Article < ActiveRecord::Base
  validates_presence_of :title
  has_many :texts, as: :authorable
end
