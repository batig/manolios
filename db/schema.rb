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

ActiveRecord::Schema.define(version: 20170520120204) do

  create_table "orders", force: :cascade do |t|
    t.integer  "team_id"
    t.decimal  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["team_id"], name: "index_orders_on_team_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.decimal  "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_order_costs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.decimal  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_order_costs", ["team_id"], name: "index_user_order_costs_on_team_id"
  add_index "user_order_costs", ["user_id"], name: "index_user_order_costs_on_user_id"

  create_table "user_team_balances", force: :cascade do |t|
    t.decimal  "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "team_id"
  end

  add_index "user_team_balances", ["team_id"], name: "index_user_team_balances_on_team_id"
  add_index "user_team_balances", ["user_id"], name: "index_user_team_balances_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
