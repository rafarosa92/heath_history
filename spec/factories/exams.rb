FactoryBot.define do
  factory :exam do
    sequence(:name) { |n| "Exam #{n}" }
    user
    appointment
    description { Faker::Lorem.paragraph }
    date { Time.zone.now }
    place { 'Some Place' }
  end
end
