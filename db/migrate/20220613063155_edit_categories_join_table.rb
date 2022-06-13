class EditCategoriesJoinTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :categories_post_join, :post_id
    remove_column :categories_post_join, :category_id
    change_table :categories_post_join do |t|
      t.belongs_to :posts
      t.belongs_to :categories
    end
  end
end
