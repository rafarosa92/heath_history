class Exam < ApplicationRecord
  belongs_to :appointment
  belongs_to :user

  has_many_attached :documents
end
