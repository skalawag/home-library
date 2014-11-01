Fabricator(:book) do
  title { Faker::Lorem.words(3).join(" ") }
  year { Faker::Number.number(4) }
  author_id { rand(Author.all.count) + 1 }
end
