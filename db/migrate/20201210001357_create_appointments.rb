class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :title
      t.datetime :date
      t.datetime :return_date
      t.references :treatment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
