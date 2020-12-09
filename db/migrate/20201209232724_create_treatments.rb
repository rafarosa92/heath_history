class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.string :title
      t.string :description
      t.string :place
      t.datetime :date
      t.string :kind
      t.string :kind_treatment
      t.file :document
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
