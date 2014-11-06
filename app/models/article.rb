class Article < ActiveRecord::Base
  validates_presence_of :title
  has_many :texts, as: :authorable

  def authors
    self.texts.map { |text| Author.find(text[:author_id]) }
  end
end
