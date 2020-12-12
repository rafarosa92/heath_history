class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :title
      t.datetime :date
      t.datetime :return_date

      t.timestamps
    end
  end
end
