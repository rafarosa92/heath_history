class Treatment < ApplicationRecord
  belongs_to :appointment
  has_one_attach :document

  enum kind: { medicine: 1, physiotherapy: 2, other: 3 }
end
