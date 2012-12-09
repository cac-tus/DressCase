class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :mail
      t.string :name
      t.string :password
      t.integer :type
      t.datetime :last_login

      t.timestamps
    end
  end
end
