FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Alphanumeric.alphanumeric(number: 10) }
    name { Faker::Artist.name }
    birthdate { Faker::Date.between(from: '1980-09-23', to: '2000-09-25') }
    kind { 1 }
  end
end
