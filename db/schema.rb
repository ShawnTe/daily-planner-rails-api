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

ActiveRecord::Schema.define(version: 20170301001741) do

  create_table "brainjuices", force: :cascade do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_brainjuices_on_name"
  end

  create_table "todays", force: :cascade do |t|
    t.integer  "brainjuice_id"
    t.integer  "time_container"
    t.date     "date"
    t.string   "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["brainjuice_id"], name: "index_todays_on_brainjuice_id"
    t.index ["date"], name: "index_todays_on_date"
    t.index ["status"], name: "index_todays_on_status"
  end

  create_table "todos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "task"
    t.string   "details"
    t.integer  "time_estimate"
    t.string   "status"
    t.integer  "brainjuice_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "today_id"
    t.index ["brainjuice_id"], name: "index_todos_on_brainjuice_id"
    t.index ["status"], name: "index_todos_on_status"
    t.index ["task"], name: "index_todos_on_task"
    t.index ["time_estimate"], name: "index_todos_on_time_estimate"
    t.index ["today_id"], name: "index_todos_on_today_id"
    t.index ["user_id"], name: "index_todos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name"
    t.index ["token"], name: "index_users_on_token", unique: true
  end

end
