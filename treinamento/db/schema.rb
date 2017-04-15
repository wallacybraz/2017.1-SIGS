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

ActiveRecord::Schema.define(version: 20170318132735) do

  create_table "shoppings", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "store_id"
    t.index ["store_id"], name: "index_shoppings_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.string   "floor"
    t.integer  "employees"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "shoppig_id"
    t.integer  "shopping_id"
    t.index ["shoppig_id"], name: "index_stores_on_shoppig_id"
    t.index ["shopping_id"], name: "index_stores_on_shopping_id"
  end

end
