class RenameCategoriesJoinTables < ActiveRecord::Migration[6.1]
  def self.up
    rename_table :category_post_join, :category_post_joins
  end
end
