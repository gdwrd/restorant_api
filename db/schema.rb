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

ActiveRecord::Schema.define(version: 20160401153840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atmosferes", primary_key: "atmosfere_id", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "restorant_id"
    t.integer  "quantity"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.date     "datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restorants", primary_key: "restorant_id", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
    t.float    "averagesum"
    t.string   "worktime"
    t.string   "phone"
    t.string   "imageurls",     default: [], array: true
    t.text     "description"
    t.float    "rating"
    t.integer  "atmosfere_ids", default: [], array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
