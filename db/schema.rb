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

ActiveRecord::Schema.define(:version => 20130627141236) do

  create_table "alarm_codes", :force => true do |t|
    t.string   "tank_name"
    t.string   "alarm_code"
    t.text     "message"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.boolean  "sent_email"
    t.string   "email"
    t.boolean  "display_site_wide"
    t.integer  "priority"
    t.string   "message_2"
  end

  create_table "alarm_notifications", :force => true do |t|
    t.string   "tank_name"
    t.string   "alarm_level"
    t.boolean  "alert_owner"
    t.text     "message_part1"
    t.text     "message_part2"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.text     "params"
  end

  create_table "equipment", :force => true do |t|
    t.text     "description"
    t.string   "equipment_name"
    t.string   "equipment_type"
    t.string   "image"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "equipment_imports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "livestock_imports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "livestocks", :force => true do |t|
    t.text     "description"
    t.string   "common_name"
    t.string   "scientific_name"
    t.string   "image"
    t.string   "livestock_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "reef_tanks", :force => true do |t|
    t.string   "tank_name"
    t.date     "setup_date"
    t.date     "last_update"
    t.integer  "current_temp"
    t.string   "temp_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "watchers", :force => true do |t|
    t.text     "params"
    t.string   "temp_name"
    t.decimal  "temp",         :precision => 8, :scale => 2
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.decimal  "ambient_temp", :precision => 8, :scale => 2
    t.integer  "ph_level"
    t.boolean  "powerhead"
    t.boolean  "main_pump"
    t.boolean  "heater"
    t.boolean  "day_light"
    t.boolean  "ato_pump"
    t.boolean  "chiller"
    t.boolean  "skimmer"
    t.boolean  "refuge_light"
    t.string   "code"
  end

end
