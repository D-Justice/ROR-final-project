class DropUnusedTables < ActiveRecord::Migration[6.1]
  def up
    drop_table :comments_tables
    drop_table :comments_user_post_tables
  end
end
