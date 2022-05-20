class AddCommentIdToCommentTable < ActiveRecord::Migration[6.1]
  def change
    change_table :comments do |t|
      t.integer :post_id
    end
  end
end
