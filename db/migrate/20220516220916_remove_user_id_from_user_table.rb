class RemoveUserIdFromUserTable < ActiveRecord::Migration[6.1]
  def up
    remove_column :users, :user_id
  end
end
