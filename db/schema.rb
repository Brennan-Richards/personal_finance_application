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

ActiveRecord::Schema.define(version: 2019_07_16_115606) do

  create_table "carexps", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "gas", precision: 11, scale: 2
    t.decimal "maintenance", precision: 11, scale: 2
    t.decimal "insurance", precision: 11, scale: 2
    t.decimal "taxes", precision: 11, scale: 2
    t.decimal "payment", precision: 11, scale: 2
    t.integer "user_id"
    t.index ["user_id"], name: "index_carexps_on_user_id"
  end

  create_table "foodexps", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "monthlyfood", precision: 11, scale: 2
    t.integer "user_id"
    t.index ["user_id"], name: "index_foodexps_on_user_id"
  end

  create_table "housingexps", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "mortgage", precision: 11, scale: 2
    t.decimal "propertytax", precision: 11, scale: 2
    t.decimal "electricity", precision: 11, scale: 2
    t.decimal "heating", precision: 11, scale: 2
    t.decimal "water", precision: 11, scale: 2
    t.decimal "entertainment", precision: 11, scale: 2
    t.integer "user_id"
    t.index ["user_id"], name: "index_housingexps_on_user_id"
  end

  create_table "specs", force: :cascade do |t|
    t.string "payperiod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "salary"
    t.integer "user_id"
    t.index ["user_id"], name: "index_specs_on_user_id"
  end

  create_table "taxes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "sincome", precision: 11, scale: 2
    t.decimal "fincome", precision: 11, scale: 2
    t.decimal "medicare", precision: 11, scale: 2
    t.decimal "disability", precision: 11, scale: 2
    t.decimal "socialsecurity", precision: 11, scale: 2
    t.integer "user_id"
    t.index ["user_id"], name: "index_taxes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "carexp_id"
    t.integer "housingexp_id"
    t.integer "foodexp_id"
    t.integer "tax_id"
    t.integer "spec_id"
    t.index ["carexp_id"], name: "index_users_on_carexp_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["foodexp_id"], name: "index_users_on_foodexp_id"
    t.index ["housingexp_id"], name: "index_users_on_housingexp_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["spec_id"], name: "index_users_on_spec_id"
    t.index ["tax_id"], name: "index_users_on_tax_id"
  end

end
