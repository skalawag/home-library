class Author < ActiveRecord::Base
  validates_presence_of :name
  has_many :texts

  def works
    self.texts.map(&:authorable)
  end
end
