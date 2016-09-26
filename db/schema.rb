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

ActiveRecord::Schema.define(version: 20160925165746) do

  create_table "boat_classifications", force: :cascade do |t|
    t.integer  "boat_id"
    t.integer  "classification_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "boats", force: :cascade do |t|
    t.string   "name"
    t.integer  "length"
    t.integer  "captain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "captains", force: :cascade do |t|
    t.string   "name"
    t.boolean  "admiral"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_relationships", force: :cascade do |t|
    t.integer "character_b_id"
    t.integer "character_a_id"
    t.string  "relationship"
    t.string  "status"
  end

  create_table "characters", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "description"
    t.text    "bio"
    t.boolean "alive"
  end

  create_table "classifications", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.string "business"
  end

  create_table "family_characters", force: :cascade do |t|
    t.integer "family_id"
    t.integer "character_id"
  end

end
