class AddUserToSharedHistories < ActiveRecord::Migration[6.0]
  def change
    add_column :shared_histories, :shared_user_id, :integer
    add_index :shared_histories, :shared_user_id

    add_column :shared_histories, :owner_user_id, :integer
    add_index :shared_histories, :owner_user_id
  end
end
