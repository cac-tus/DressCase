# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121026113721) do

  create_table "actresses", :force => true do |t|
    t.integer  "office_id"
    t.string   "name"
    t.integer  "sex"
    t.date     "birthday"
    t.binary   "photo1"
    t.binary   "photo2"
    t.binary   "photo3"
    t.text     "profile"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "directors", :force => true do |t|
    t.integer  "user_id"
    t.binary   "photo"
    t.integer  "sex"
    t.date     "birthday"
    t.text     "profile"
    t.string   "belong"
    t.datetime "last_login"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "offer_logs", :force => true do |t|
    t.integer  "send_id"
    t.integer  "receive_id"
    t.datetime "send_datetime"
    t.datetime "receive_datetime"
    t.text     "message"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "offices", :force => true do |t|
    t.integer  "user_id"
    t.string   "address"
    t.string   "rep_name"
    t.integer  "tel"
    t.integer  "tel2"
    t.string   "mail2"
    t.text     "caption"
    t.binary   "logo"
    t.string   "last_login"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "mail"
    t.string   "name"
    t.string   "password"
    t.integer  "type"
    t.datetime "last_login"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
