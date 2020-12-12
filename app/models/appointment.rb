class Appointment < ApplicationRecord
  belongs_to :health_professional_user, foreign_key: 'health_professional_user_id', class_name: 'User'
  belongs_to :patient_user, foreign_key: 'patient_user_id', class_name: 'User'

  has_many_attached :prescriptions
end
