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

ActiveRecord::Schema.define(version: 20141201150949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flats", force: true do |t|
    t.integer  "num_rooms"
    t.integer  "num_baths"
    t.boolean  "pet"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "flat_photo_file_name"
    t.string   "flat_photo_content_type"
    t.integer  "flat_photo_file_size"
    t.datetime "flat_photo_updated_at"
  end

  add_index "flats", ["user_id"], name: "index_flats_on_user_id", using: :btree

  create_table "rooms", force: true do |t|
    t.integer  "price"
    t.text     "room_photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "flat_id"
    t.string   "room_photo_file_name"
    t.string   "room_photo_content_type"
    t.integer  "room_photo_file_size"
    t.datetime "room_photo_updated_at"
  end

  add_index "rooms", ["flat_id"], name: "index_rooms_on_flat_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
