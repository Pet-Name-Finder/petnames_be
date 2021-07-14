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

ActiveRecord::Schema.define(version: 2021_07_14_184910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "liked_names", force: :cascade do |t|
    t.bigint "pack_id"
    t.bigint "pet_name_id"
    t.boolean "liked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pack_id"], name: "index_liked_names_on_pack_id"
    t.index ["pet_name_id"], name: "index_liked_names_on_pet_name_id"
  end

  create_table "packs", force: :cascade do |t|
    t.string "animal_gender"
    t.string "animal_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "owner_id"
    t.index ["owner_id"], name: "index_packs_on_owner_id"
  end

  create_table "pet_names", force: :cascade do |t|
    t.string "name"
    t.boolean "viewed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_packs", force: :cascade do |t|
    t.bigint "pack_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pack_id"], name: "index_user_packs_on_pack_id"
    t.index ["user_id"], name: "index_user_packs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "liked_names", "packs"
  add_foreign_key "liked_names", "pet_names"
  add_foreign_key "packs", "users", column: "owner_id"
  add_foreign_key "user_packs", "packs"
  add_foreign_key "user_packs", "users"
end
