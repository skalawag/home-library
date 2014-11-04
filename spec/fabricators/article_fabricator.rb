Fabricator(:article) do
  title { Faker::Lorem.words(rand(1..5)).join(" ") }
end
