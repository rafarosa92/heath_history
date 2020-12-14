class AddAppointmentToTreatment < ActiveRecord::Migration[6.0]
  def change
    add_reference :treatments, :appointment, null: false, foreign_key: true
  end
end
