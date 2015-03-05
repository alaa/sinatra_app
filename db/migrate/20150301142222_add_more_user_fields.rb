class AddMoreUserFields < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :salt
      t.string :password
      t.string :create_timestamp
      t.string :update_timestamp
      t.string :last_login_timestamp
    end
  end
end
