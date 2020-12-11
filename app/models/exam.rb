class Exam < ApplicationRecord
  belongs_to :appointment
  has_many_attach :documents
end
