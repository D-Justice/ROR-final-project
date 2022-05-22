class AddOmniauthParametersToUser < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.string :image
      t.string :uid
      t.string :provider
    end
  end
end

