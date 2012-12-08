class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :mail
      t.string :name
      t.string :password
      t.integer :type
      t.datetime :sign_up
      t.datetime :last_login
      t.datetime :last_update

      t.timestamps
    end
  end
end
