class SharedHistory < ApplicationRecord
  belongs_to :appointment

  belongs_to :user, foreign_key: 'owner_user_id'
  belongs_to :user, foreign_key: 'shared_user_id'
end
