# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  author = Fabricate(:author)
  num_of_books = rand(3) + 1
  num_of_books.times do
    author.books << Fabricate(:book)
  end
end

Book.first.authors << Author.last
