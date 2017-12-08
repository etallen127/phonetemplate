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

ActiveRecord::Schema.define(version: 20171208090659) do

  create_table "days", force: :cascade do |t|
    t.string   "title"
    t.date     "date"
    t.integer  "program_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "days", ["program_id"], name: "index_days_on_program_id"
  add_index "days", ["user_id"], name: "index_days_on_user_id"

  create_table "goals", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "progress"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "goals", ["user_id"], name: "index_goals_on_user_id"

  create_table "lift_classes", force: :cascade do |t|
    t.string   "group"
    t.text     "description"
    t.integer  "lclass_id"
    t.string   "lclass_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lift_classes", ["lclass_type", "lclass_id"], name: "index_lift_classes_on_lclass_type_and_lclass_id"

  create_table "lifts", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "video"
    t.integer  "difficulty"
    t.integer  "day_id"
    t.integer  "program_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lifts", ["day_id"], name: "index_lifts_on_day_id"
  add_index "lifts", ["program_id"], name: "index_lifts_on_program_id"
  add_index "lifts", ["user_id"], name: "index_lifts_on_user_id"

  create_table "programs", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "programs", ["user_id"], name: "index_programs_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.string   "goals"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
