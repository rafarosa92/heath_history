FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    avatar { Faker::Avatar.image(slug: "my-own-slug") }
    email { Faker::Internet.email }
    password { "123456" }
    password_confirmation { "123456" }
    kind { :patient }
    birthdate { Faker::Date.birthday }
  end
end
