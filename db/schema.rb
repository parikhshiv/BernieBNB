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

ActiveRecord::Schema.define(version: 20151228192231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hostings", force: :cascade do |t|
    t.string   "zipcode",                null: false
    t.integer  "max_guests", default: 1, null: false
    t.float    "latitude",               null: false
    t.float    "longitude",              null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",                null: false
  end

  add_index "hostings", ["user_id"], name: "index_hostings_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.inet     "current_sign_in_ip"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "first_name"
    t.string   "phone"
    t.string   "session_token",                   null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["provider"], name: "index_users_on_provider", using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["uid"], name: "index_users_on_uid", using: :btree

  create_table "visits", force: :cascade do |t|
    t.date     "start_date",                null: false
    t.date     "end_date",                  null: false
    t.string   "zipcode",                   null: false
    t.integer  "num_travelers", default: 1, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.float    "latitude",                  null: false
    t.float    "longitude",                 null: false
    t.integer  "user_id",                   null: false
  end

  add_index "visits", ["user_id"], name: "index_visits_on_user_id", using: :btree

end
