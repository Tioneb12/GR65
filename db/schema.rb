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

ActiveRecord::Schema.define(version: 20180304193740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flat_services", force: :cascade do |t|
    t.bigint "flat_id"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_flat_services_on_flat_id"
    t.index ["service_id"], name: "index_flat_services_on_service_id"
  end

  create_table "flats", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "adress2"
    t.integer "zip_code"
    t.string "city"
    t.string "phone_number"
    t.string "mobil_phone"
    t.integer "capacity"
    t.string "picture"
    t.float "pk"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "photo"
    t.index ["user_id"], name: "index_flats_on_user_id"
  end

  create_table "profils", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "pseudo"
    t.string "city"
    t.string "country"
    t.string "description"
    t.string "avatar"
    t.date "birth_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["user_id"], name: "index_profils_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.string "icon"
    t.boolean "statut", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "flat_services", "flats"
  add_foreign_key "flat_services", "services"
  add_foreign_key "flats", "users"
  add_foreign_key "profils", "users"
end
