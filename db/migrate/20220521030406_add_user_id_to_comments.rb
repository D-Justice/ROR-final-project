class AddUserIdToComments < ActiveRecord::Migration[6.1]
  def change
    change_table :comments do |t|
      t.integer :user_id
    end
  end
end
