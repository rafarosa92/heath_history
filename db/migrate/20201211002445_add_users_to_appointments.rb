class AddUsersToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :health_professional_user_id, :integer
    add_index :appointments, :health_professional_user_id

    add_column :appointments, :patient_user_id, :integer
    add_index :appointments, :patient_user_id
  end
end
