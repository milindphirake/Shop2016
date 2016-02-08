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

ActiveRecord::Schema.define(version: 20160208112106) do

  create_table "address_details", force: :cascade do |t|
    t.text     "line1",      limit: 65535
    t.text     "line2",      limit: 65535
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.integer  "postcode",   limit: 4
    t.string   "country",    limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.string   "SKU",         limit: 255
    t.text     "description", limit: 65535
    t.integer  "quantity",    limit: 4
    t.decimal  "price",                     precision: 10
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "orderdetails", force: :cascade do |t|
    t.integer  "order_no",            limit: 4
    t.boolean  "is_express_delivery"
    t.boolean  "is_customer_pickup"
    t.datetime "delivery_date"
    t.datetime "delivery_slot"
    t.string   "carrier",             limit: 255
    t.string   "order_currency",      limit: 255
    t.integer  "order_value",         limit: 4
    t.string   "payment_collection",  limit: 255
    t.text     "special_instruction", limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "SKU",          limit: 255
    t.string   "name",         limit: 255
    t.integer  "quantity",     limit: 4
    t.float    "weight",       limit: 24
    t.float    "height",       limit: 24
    t.float    "width",        limit: 24
    t.float    "depth",        limit: 24
    t.string   "company",      limit: 255
    t.float    "cost_price",   limit: 24
    t.float    "retail_price", limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end