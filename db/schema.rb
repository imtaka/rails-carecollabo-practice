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

ActiveRecord::Schema.define(version: 2020_05_05_234332) do

  create_table "careplans", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.date "create_plan"
    t.date "update_plan"
    t.text "care_task"
    t.text "long_time_care_goal"
    t.text "short_time_care_goal"
    t.text "user_wants"
    t.text "family_wants"
    t.text "situation_achieved_goal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_careplans_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "gender"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "careplans", "customers"
end
