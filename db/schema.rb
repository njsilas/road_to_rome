# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_17_015540) do

  create_table "booked_trips", force: :cascade do |t|
    t.text "trip_notes"
    t.integer "user_id"
    t.integer "flight_id"
    t.integer "savings_cents", default: 0, null: false
    t.string "savings_currency", default: "USD", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_id"], name: "index_booked_trips_on_flight_id"
    t.index ["user_id"], name: "index_booked_trips_on_user_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "location"
    t.string "lodging"
    t.integer "user_id"
    t.integer "lodging_price_cents", default: 0, null: false
    t.string "lodging_price_currency", default: "USD", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_destinations_on_user_id"
  end

  create_table "flights", force: :cascade do |t|
    t.string "airport_to"
    t.string "airline_to"
    t.string "airline_from"
    t.string "airport_from"
    t.datetime "arrival"
    t.datetime "departure"
    t.integer "destination_id"
    t.integer "ticket_price_cents", default: 0, null: false
    t.string "ticket_price_currency", default: "USD", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["destination_id"], name: "index_flights_on_destination_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
