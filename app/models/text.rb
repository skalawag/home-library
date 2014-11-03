class Text < ActiveRecord::Base
  belongs_to :author
  belongs_to :authorable, polymorphic: true
end
