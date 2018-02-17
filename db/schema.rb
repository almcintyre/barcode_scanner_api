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

ActiveRecord::Schema.define(version: 20180217202456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "form_questions", force: :cascade do |t|
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.bigint "form_question_id"
    t.index ["form_question_id"], name: "index_questions_on_form_question_id"
    t.index ["users_id"], name: "index_questions_on_users_id"
  end

  create_table "upcs", force: :cascade do |t|
    t.string "product_name"
    t.string "upc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "questions", "form_questions"
  add_foreign_key "questions", "users", column: "users_id"
end
