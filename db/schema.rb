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
