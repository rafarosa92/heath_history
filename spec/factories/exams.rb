FactoryBot.define do
  factory :exam do
    sequence(:name) { |n| "Exam #{n}" }
    description { Faker::Lorem.paragraph }
    date { Time.zone.now }
    place { "Some Place" }
    document { Faker::File.file_name }
  end
end
