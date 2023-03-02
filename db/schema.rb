
ActiveRecord::Schema[7.0].define(version: 2023_02_27_163459) do

  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "presentation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_dogs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_dogs_on_reset_password_token", unique: true
  end

  create_table "human_categories", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "human_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_human_categories_on_category_id"
    t.index ["human_id"], name: "index_human_categories_on_human_id"
  end

  create_table "humans", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.bigint "dog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_humans_on_dog_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "date"
    t.bigint "dog_id", null: false
    t.bigint "human_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_reservations_on_dog_id"
    t.index ["human_id"], name: "index_reservations_on_human_id"
  end

  add_foreign_key "human_categories", "categories"
  add_foreign_key "human_categories", "humans"
  add_foreign_key "humans", "dogs"
  add_foreign_key "reservations", "dogs"
  add_foreign_key "reservations", "humans"
end
