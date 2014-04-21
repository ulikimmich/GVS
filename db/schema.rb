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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140421191230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acc_applications", force: true do |t|
    t.text     "appform_field_1"
    t.text     "appform_field_2"
    t.text     "appform_field_3"
    t.text     "appform_field_4"
    t.text     "appform_field_5"
    t.text     "appform_field_6"
    t.text     "appform_field_7"
    t.text     "appform_field_8"
    t.text     "appform_field_9"
    t.text     "appform_field_10"
    t.text     "appform_field_11"
    t.text     "appform_field_12"
    t.text     "appform_field_13"
    t.text     "appform_field_14"
    t.text     "appform_field_15"
    t.text     "appform_field_16"
    t.text     "appform_field_17"
    t.text     "appform_field_18"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "status",           default: "new"
    t.boolean  "draft",            default: true
    t.text     "appform_field_19"
    t.integer  "phase",            default: 1
  end

  create_table "acc_phasetwos", force: true do |t|
    t.text     "appform_field_20"
    t.text     "appform_field_21"
    t.text     "appform_field_22"
    t.text     "appform_field_23"
    t.text     "appform_field_24"
    t.text     "appform_field_25"
    t.text     "appform_field_26"
    t.text     "appform_field_27"
    t.text     "appform_field_28"
    t.text     "appform_field_29"
    t.text     "appform_field_30"
    t.text     "appform_field_31"
    t.text     "appform_field_32"
    t.text     "appform_field_33"
    t.text     "appform_field_34"
    t.text     "appform_field_35"
    t.text     "appform_field_36"
    t.text     "appform_field_37"
    t.text     "appform_field_38"
    t.text     "appform_field_39"
    t.text     "appform_field_40"
    t.text     "appform_field_41"
    t.text     "appform_field_42"
    t.text     "appform_field_43"
    t.text     "appform_field_44"
    t.text     "appform_field_45"
    t.text     "appform_field_46"
    t.text     "appform_field_47"
    t.text     "appform_field_48"
    t.text     "appform_field_49"
    t.integer  "user_id"
    t.string   "status",           default: "new"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disciplines", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "founders", force: true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "companyrole"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "phone"
    t.string   "dateofbirth"
    t.string   "website"
    t.text     "education"
    t.text     "resume"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "acc_application_id"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",                     default: false
    t.string   "status"
    t.string   "zipcode"
    t.string   "city"
    t.string   "state"
    t.string   "address"
    t.string   "country"
    t.string   "phone"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.string   "skype"
    t.string   "creative_platform_profile"
    t.string   "website"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
