# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  author = Fabricate(:author)
  book = Fabricate(:book)
  article = Fabricate(:article)
  Text.create(author_id: author.id,
              authorable_type: 'Book',
              authorable_id: book.id)
  Text.create(author_id: author.id,
              authorable_type: 'Article',
              authorable_id: article.id)
end

Text.create(author_id: 5, authorable_type: 'Book', authorable_id: 1)
