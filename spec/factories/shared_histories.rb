FactoryBot.define do
  factory :shared_history do
    appointment
    owner_user_id { create(:user).id }
    shared_user_id { create(:user).id }
    expiration_date { Time.zone.now + 1.week }
  end
end
