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

ActiveRecord::Schema.define(version: 2019_06_28_171000) do

  create_table "carexps", force: :cascade do |t|
    t.float "gas"
    t.float "maintenance"
    t.float "insurance"
    t.float "taxes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "payment"
  end

  create_table "foodexps", force: :cascade do |t|
    t.integer "monthlyfood"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "housingexps", force: :cascade do |t|
    t.integer "mortgage"
    t.integer "propertytax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "electricity"
    t.integer "heating"
    t.integer "water"
    t.integer "entertainment"
  end

  create_table "taxes", force: :cascade do |t|
    t.float "salary"
    t.integer "dependents"
    t.boolean "selfemployed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sincome"
    t.integer "fincome"
  end

end
