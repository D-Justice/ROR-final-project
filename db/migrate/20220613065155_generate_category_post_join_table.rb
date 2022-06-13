class GenerateCategoryPostJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :category_post_join do |t|
      t.integer :post_id
      t.integer :category_id
    end
  end
end
