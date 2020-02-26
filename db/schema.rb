# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_26_002300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category_maps", force: :cascade do |t|
    t.bigint "quotes_id", null: false
    t.bigint "categories_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categories_id"], name: "index_category_maps_on_categories_id"
    t.index ["quotes_id"], name: "index_category_maps_on_quotes_id"
  end

  create_table "celebrities", force: :cascade do |t|
    t.string "name", limit: 140, null: false
    t.string "uri"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "content", null: false
    t.integer "value", default: 0, null: false
    t.bigint "celebrity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["celebrity_id"], name: "index_quotes_on_celebrity_id"
  end

  add_foreign_key "category_maps", "categories", column: "categories_id"
  add_foreign_key "category_maps", "quotes", column: "quotes_id"
  add_foreign_key "quotes", "celebrities"
end
