class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.string :title
      t.text :description
      t.string :place
      t.datetime :date
      t.string :kind
      t.string :kind_treatment

      t.timestamps
    end
  end
end
