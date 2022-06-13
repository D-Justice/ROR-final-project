class RevertCategoriesJoinTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :categories_post_join
  end
end
