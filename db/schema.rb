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

ActiveRecord::Schema.define(version: 2021_03_23_192434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deliveries", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.integer "quantity"
    t.integer "delivery_note_number"
    t.date "delivery_date"
    t.string "driver_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_deliveries_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "customer_name"
    t.integer "film_width"
    t.string "material"
    t.decimal "filler", default: "0.0"
    t.string "specifications"
    t.string "size"
    t.integer "order_weight_kg", null: false
    t.integer "total_film_made", default: 0
    t.integer "total_boxes", default: 0
    t.boolean "gusset"
    t.boolean "delivered", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "thickness", null: false
    t.string "masterbatch", default: "None"
    t.boolean "print_complete", default: false
    t.integer "total_printed_weight", default: 0
    t.boolean "cut_complete", default: false
    t.integer "height", default: 0
    t.integer "packing_weight", default: 0
    t.string "reference_number"
    t.integer "delivered_quantity", default: 0
    t.integer "film_to_produce"
  end

  create_table "rolls", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.integer "machine_number", null: false
    t.integer "roll_weight", null: false
    t.boolean "roll_print_complete", default: false
    t.boolean "gusset_complete"
    t.boolean "roll_cut_complete", default: false
    t.string "operator_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "printed_weight", default: 0
    t.integer "number_of_boxes", default: 0
    t.integer "qa_sample_weight", default: 0, null: false
    t.index ["order_id"], name: "index_rolls_on_order_id"
  end

  add_foreign_key "deliveries", "orders"
  add_foreign_key "rolls", "orders"
end
