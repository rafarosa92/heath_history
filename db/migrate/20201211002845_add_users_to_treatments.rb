class AddUsersToTreatments < ActiveRecord::Migration[6.0]
  def change
    add_reference :treatments, :user, null: false, foreign_key: true
  end
end
