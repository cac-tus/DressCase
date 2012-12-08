class CreateActresses < ActiveRecord::Migration
  def change
    create_table :actresses do |t|
      t.integer :id
      t.integer :office_id
      t.string :name
      t.integer :sex
      t.date :birthday
      t.binary :photo1, :limit => (16*1024*1024 - 1)
      t.binary :photo2, :limit => (16*1024*1024 - 1)
      t.binary :photo3, :limit => (16*1024*1024 - 1)
      t.text :profile

      t.timestamps
    end
  end
end
