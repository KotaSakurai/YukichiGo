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

ActiveRecord::Schema.define(version: 2018_12_15_090223) do

  create_table "abilities", force: :cascade do |t|
    t.integer "monster_id"
    t.integer "strength"
    t.integer "defence"
    t.integer "speed"
    t.integer "intelligence"
    t.integer "special"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adjective_words", force: :cascade do |t|
    t.string "name"
    t.integer "power"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "battles", force: :cascade do |t|
    t.integer "user_id"
    t.integer "winner_id"
    t.integer "loser_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loser_id"], name: "index_battles_on_loser_id"
    t.index ["user_id"], name: "index_battles_on_user_id"
    t.index ["winner_id"], name: "index_battles_on_winner_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "serial_number", null: false
    t.integer "power", null: false
    t.string "name"
    t.integer "user_id", null: false
    t.integer "created_at", null: false
    t.integer "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "browser_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
