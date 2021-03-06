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

ActiveRecord::Schema.define(:version => 20130316061617) do

  create_table "admins", :force => true do |t|
    t.string   "role"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "authentication_tokens", :force => true do |t|
    t.string   "auth_token"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "fan_id"
  end

  create_table "back_stage_registrations", :force => true do |t|
    t.string   "email"
    t.string   "fb_auth_token"
    t.string   "type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "event_name"
    t.string   "artist"
    t.string   "description"
    t.string   "genere"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "ticket_rate_min"
    t.integer  "ticket_rate_max"
    t.string   "ticket_master_link"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "venue_id"
  end

  create_table "fans", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.string   "fan_name"
    t.date     "dob"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "country"
    t.string   "city"
    t.integer  "zip"
    t.integer  "latitude"
    t.integer  "longitude"
    t.string   "fb_auth_token"
    t.string   "type"
  end

  add_index "fans", ["confirmation_token"], :name => "index_fans_on_confirmation_token", :unique => true
  add_index "fans", ["email"], :name => "index_fans_on_email", :unique => true
  add_index "fans", ["reset_password_token"], :name => "index_fans_on_reset_password_token", :unique => true

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "password"
    t.string   "address"
  end

end
