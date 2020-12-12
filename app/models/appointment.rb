class Appointment < ApplicationRecord
  belongs_to :user, foreign_key: 'health_professional_user_id'
  belongs_to :user, foreign_key: 'patient_user_id'
end
