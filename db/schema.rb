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

ActiveRecord::Schema.define(version: 20150311131241) do

  create_table "orders", force: true do |t|
    t.string   "last_name",       null: false
    t.string   "first_name",      null: false
    t.string   "last_name_kana",  null: false
    t.string   "first_name_kana", null: false
    t.string   "mail",            null: false
    t.string   "phone_number"
    t.text     "purpose",         null: false
    t.text     "other_purpose"
    t.date     "preffered_date",  null: false
    t.float    "length",          null: false
    t.float    "width",           null: false
    t.text     "message",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", force: true do |t|
    t.integer  "price",                      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "size",       default: "999", null: false
    t.string   "purpose",    default: "999", null: false
  end

end
