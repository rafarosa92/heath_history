class Appointment < ApplicationRecord
  belongs_to :health_professional_user, foreign_key: 'health_professional_user_id', class_name: 'User'
  belongs_to :patient_user, foreign_key: 'patient_user_id', class_name: 'User'

  has_many_attached :prescriptions

  validates :title, :date, :return_date, :health_professional_user_id, :patient_user_id, presence: true

  def full_description
    "#{title} - #{patient_user.name}"
  end
end
