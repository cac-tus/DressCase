class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.integer :id
      t.integer :user_id
      t.string :address
      t.string :rep_name
      t.integer :tel
      t.integer :tel2
      t.string :mail2
      t.text :caption
      t.binary :logo
      t.string :last_login

      t.timestamps
    end
  end
end
