ActiveRecord::Schema.define(version: 2021_11_30_023530) do

  create_table "rental_houses", force: :cascade do |t|
    t.string "name"
    t.integer "fee"
    t.text "address"
    t.integer "age"
    t.text "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "route_name"
    t.string "name"
    t.integer "min_on_foot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rental_house_id"
    t.index ["rental_house_id"], name: "index_stations_on_rental_house_id"
  end

  add_foreign_key "stations", "rental_houses"
end
