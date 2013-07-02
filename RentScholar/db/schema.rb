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

ActiveRecord::Schema.define(:version => 20130511202414) do

  create_table "landlords", :force => true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 10
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "listing_id"
  end

  add_index "landlords", ["authentication_token"], :name => "index_landlords_on_authentication_token", :unique => true
  add_index "landlords", ["confirmation_token"], :name => "index_landlords_on_confirmation_token", :unique => true
  add_index "landlords", ["email"], :name => "index_landlords_on_email", :unique => true
  add_index "landlords", ["reset_password_token"], :name => "index_landlords_on_reset_password_token", :unique => true
  add_index "landlords", ["unlock_token"], :name => "index_landlords_on_unlock_token", :unique => true

  create_table "listings", :force => true do |t|
    t.integer  "landlord_id"
    t.string   "title"
    t.text     "description"
    t.integer  "rooms"
    t.decimal  "price"
    t.date     "available"
    t.string   "utilities"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "images"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
