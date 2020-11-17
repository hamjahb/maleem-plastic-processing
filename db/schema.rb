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

ActiveRecord::Schema.define(version: 2020_11_17_112552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.index ["order_id"], name: "index_rolls_on_order_id"
  end

  add_foreign_key "rolls", "orders"
end
