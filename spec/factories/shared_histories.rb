FactoryBot.define do
  factory :shared_history do
    expiration_date { Time.zone.now + 1.week }
  end
end
