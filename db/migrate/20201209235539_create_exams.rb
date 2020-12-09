class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.string :name
      t.string :description
      t.datetime :date
      t.string :place
      t.file :document
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
