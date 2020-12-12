class Treatment < ApplicationRecord
  belongs_to :appointment
  belongs_to :user

  has_one_attached :document

  enum kind: { medicine: 1, physiotherapy: 2, other: 3 }
end
