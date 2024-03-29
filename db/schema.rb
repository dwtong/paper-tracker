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

ActiveRecord::Schema.define(version: 20170524024924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "binding"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.date     "collected_on", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "customer_type", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "book_id"
    t.integer  "quantity",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_order_items_on_book_id", using: :btree
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.date     "due_on",      null: false
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.index ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  end

  create_table "pages", force: :cascade do |t|
    t.integer  "paper_type_id"
    t.integer  "book_id"
    t.integer  "quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["book_id"], name: "index_pages_on_book_id", using: :btree
    t.index ["paper_type_id"], name: "index_pages_on_paper_type_id", using: :btree
  end

  create_table "paper_transactions", force: :cascade do |t|
    t.integer  "paper_id"
    t.integer  "quantity",          default: 0,     null: false
    t.boolean  "ecoloop_stock",     default: false, null: false
    t.string   "transactable_type"
    t.integer  "transactable_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["paper_id"], name: "index_paper_transactions_on_paper_id", using: :btree
    t.index ["transactable_type", "transactable_id"], name: "by_transactable_type_and_id", using: :btree
  end

  create_table "paper_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "size",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "size"], name: "index_paper_types_on_name_and_size", unique: true, using: :btree
  end

  create_table "papers", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "paper_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["customer_id"], name: "index_papers_on_customer_id", using: :btree
    t.index ["paper_type_id"], name: "index_papers_on_paper_type_id", using: :btree
  end

  create_table "transfers", force: :cascade do |t|
    t.date     "transferred_on", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
