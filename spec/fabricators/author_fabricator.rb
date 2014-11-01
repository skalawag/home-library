Fabricator(:author) do
  name { Faker::Lorem.words(2).join(" ") }
end
