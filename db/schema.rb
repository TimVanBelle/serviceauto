# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160314171051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string   "registration_plate"
    t.string   "car_maker"
    t.string   "color"
    t.integer  "mileage"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "cars", ["user_id"], name: "index_cars_on_user_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "service_type"
    t.float    "price"
    t.string   "pick_up_place"
    t.string   "return_place"
    t.string   "service_address"
    t.text     "comment"
    t.integer  "customer_id"
    t.integer  "groom_id"
    t.integer  "car_id"
    t.boolean  "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "orders", ["car_id"], name: "index_orders_on_car_id", using: :btree

  create_table "profils", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "mail"
    t.string   "picture"
    t.string   "phone_number"
    t.string   "address"
    t.string   "rib"
    t.string   "driving_licence"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "profils", ["user_id"], name: "index_profils_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["service_id"], name: "index_reviews_on_service_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.float    "price"
    t.text     "content"
    t.string   "title"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "services", ["order_id"], name: "index_services_on_order_id", using: :btree

  create_table "subscriptions", force: :cascade do |t|
    t.string   "title"
    t.float    "price"
    t.text     "content"
    t.string   "status"
    t.datetime "start_date"
    t.datetime "end_time"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "cars", "users"
  add_foreign_key "orders", "cars"
  add_foreign_key "profils", "users"
  add_foreign_key "reviews", "services"
  add_foreign_key "reviews", "users"
  add_foreign_key "services", "orders"
  add_foreign_key "subscriptions", "users"
end
