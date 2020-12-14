class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum kind: { patient: 1, health_professional: 2, admin: 3 }
  has_one_attached :avatar
end
