class AddCategoriesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :categories_post_join do |t|
      t.integer :category_id
      t.integer :post_id
    end
  end
end
