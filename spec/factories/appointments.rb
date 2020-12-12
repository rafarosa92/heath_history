FactoryBot.define do
  factory :appointment do
    sequence(:title) { |n| "Appointment #{n}" }
    health_professional_user_id { create(:user).id }
    patient_user_id { create(:user).id }
    date          { Time.zone.now }
    return_date   { Time.zone.now + 1.week }
  end
end
