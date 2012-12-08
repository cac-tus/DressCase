class CreateOfferLogs < ActiveRecord::Migration
  def change
    create_table :offer_logs do |t|
      t.integer :id
      t.integer :send_id
      t.integer :receive_id
      t.datetime :send_datetime
      t.datetime :receive_datetime
      t.text :message

      t.timestamps
    end
  end
end
