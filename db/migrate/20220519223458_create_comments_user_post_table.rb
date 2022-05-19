class CreateCommentsUserPostTable < ActiveRecord::Migration[6.1]
  def change
    create_table :comments_user_post_tables do |t|
      t.integer :user_id
      t.integer :post_id
      t.integer :comment_id
      t.timestamps
    end
  end
end
