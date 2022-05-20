class RemoveCommentIdFromCommentsTable < ActiveRecord::Migration[6.1]
  def up
    remove_column :comments, :comment_id
  end
end
