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

ActiveRecord::Schema.define(version: 2020_12_10_001742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "title"
    t.datetime "date"
    t.datetime "return_date"
    t.bigint "treatment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["treatment_id"], name: "index_appointments_on_treatment_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "date"
    t.string "place"
    t.bigint "appointment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_exams_on_appointment_id"
  end

  create_table "shared_histories", force: :cascade do |t|
    t.datetime "expiration_date"
    t.bigint "appointment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_shared_histories_on_appointment_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "place"
    t.datetime "date"
    t.string "kind"
    t.string "kind_treatment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "treatments"
  add_foreign_key "exams", "appointments"
  add_foreign_key "shared_histories", "appointments"
end
