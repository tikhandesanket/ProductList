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

ActiveRecord::Schema.define(version: 2019_11_21_144846) do

  create_table "products", force: :cascade do |t|
    t.integer "warehouse_id"
    t.string "sku_code"
    t.string "name"
    t.integer "desciption"
    t.datetime "mgf_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["warehouse_id"], name: "index_products_on_warehouse_id"
  end

  create_table "products_warehouses", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "warehouse_id", null: false
    t.index ["product_id", "warehouse_id"], name: "index_products_warehouses_on_product_id_and_warehouse_id"
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "wh_code"
    t.string "name"
    t.integer "pincode"
    t.integer "max_capacity"
    t.integer "product_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "min_capacity"
  end

end
