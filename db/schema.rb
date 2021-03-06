# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_12_111239) do
  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "area"
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_plans_on_company_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "specialty"
    t.text "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.float "percent_covered"
    t.integer "days_waited"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "days_waited_for_reimbursement"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "result_id", null: false
    t.integer "plan_id", null: false
    t.integer "treatment_id", null: false
    t.integer "user_id", null: false
    t.integer "provider_id", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_reviews_on_plan_id"
    t.index ["provider_id"], name: "index_reviews_on_provider_id"
    t.index ["result_id"], name: "index_reviews_on_result_id"
    t.index ["treatment_id"], name: "index_reviews_on_treatment_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_type_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

  add_foreign_key "plans", "companies"
  add_foreign_key "reviews", "plans"
  add_foreign_key "reviews", "providers"
  add_foreign_key "reviews", "results"
  add_foreign_key "reviews", "treatments"
  add_foreign_key "reviews", "users"
  add_foreign_key "users", "user_types"
end
