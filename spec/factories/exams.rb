FactoryBot.define do
  factory :exam do
    name        { Faker::String.random }
    description { Faker::Lorem.paragraph }
    date        { Time.zone.now }
    place       { "Some Place" }
    document    { Faker::File.file_name }
  end
end
