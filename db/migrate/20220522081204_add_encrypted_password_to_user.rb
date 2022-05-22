class AddEncryptedPasswordToUser < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.string :encrypted_password
    end
  end
end
