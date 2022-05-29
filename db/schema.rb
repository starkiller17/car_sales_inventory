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

ActiveRecord::Schema.define(version: 2022_05_29_233710) do

  create_table "cars", force: :cascade do |t|
    t.integer "dealership_id"
    t.string "serial_number", null: false
    t.string "model", null: false
    t.string "brand", null: false
    t.integer "year", null: false
    t.float "price", null: false
    t.string "car_type", null: false
    t.string "created_by"
    t.string "udpated_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dealership_id"], name: "index_cars_on_dealership_id"
  end

  create_table "dealerships", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "created_by"
    t.string "udpated_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "user_type", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cars", "dealerships"
end
