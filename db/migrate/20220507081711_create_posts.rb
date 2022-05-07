class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
        t.string :title
        t.datetime :date
        t.text :content
        t.integer :likes
      t.timestamps
    end
  end
end
