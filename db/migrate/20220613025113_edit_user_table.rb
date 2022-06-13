class EditUserTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :encrypted_password
    change_table :users do |t|
      t.string :password_digest
    end
  end
end
