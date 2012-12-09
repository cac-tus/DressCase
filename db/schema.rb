# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20121119134650) do

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
    t.integer  "offer_id"
    t.integer  "director_id"
    t.integer  "actress_id"
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
    t.datetime "last_login"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.integer  "type"
    t.datetime "last_login"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "uid"
    t.string   "provider"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
