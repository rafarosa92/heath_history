FactoryBot.define do
  factory :treatment do
    title         { Faker::String.random }
    description   { Faker::Lorem.paragraph }
    place         { "Some Place" }
    date          { Time.zone.now }
    kind          { :medicine }
    document      { Faker::File.file_name }
  end
end
