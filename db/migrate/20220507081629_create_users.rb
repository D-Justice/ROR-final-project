class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
        t.string :userName
        t.string :firstName
        t.string :lastName
        t.string :email
    
      t.timestamps
    end
  end
end



