FactoryBot.define do
  factory :appointment do
    title         { Faker::String.random }
    prescriptions { Faker::File.file_name }
    date          { Time.zone.now }
    return_date   { Time.zone.now + 1.week }
  end
end
