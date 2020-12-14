FactoryBot.define do
  factory :treatment do
    sequence(:title) { |n| "Treatment #{n}" }
    appointment
    user
    description { Faker::Lorem.paragraph }
    place { 'Some Place' }
    date { Time.zone.now }
    kind { 1 }
  end
end
