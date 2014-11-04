Fabricator(:book) do
  title { Faker::Lorem.words(3).join(" ") }
  year { rand(999..2016) }
end
