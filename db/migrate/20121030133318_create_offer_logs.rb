class CreateOfferLogs < ActiveRecord::Migration
  def change
    create_table :offer_logs do |t|
      t.integer :offer_id
      t.integer :director_id
      t.integer :actress_id
      t.datetime :send_datetime
      t.datetime :receive_datetime
      t.text :message

      t.timestamps
    end
  end
end
