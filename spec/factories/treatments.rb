FactoryBot.define do
  factory :treatment do
    sequence(:title) { |n| "Treatment #{n}" }
    description { Faker::Lorem.paragraph }
    place { "Some Place" }
    date { Time.zone.now }
    kind { :medicine }
    document { Faker::File.file_name }
  end
end
