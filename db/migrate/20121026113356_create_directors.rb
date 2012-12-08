class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.integer :id
      t.integer :user_id
      t.binary :photo
      t.integer :sex
      t.date :birthday
      t.text :profile
      t.string :belong
      t.datetime :last_login

      t.timestamps
    end
  end
end
