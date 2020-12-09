class CreateSharedHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :shared_histories do |t|
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
