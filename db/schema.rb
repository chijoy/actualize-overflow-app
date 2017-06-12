ActiveRecord::Schema.define(version: 20170612163110) do

  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "solution"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
    t.integer  "user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.string   "problem"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "answer_id"
    t.string   "status"
    t.integer  "user_id"
    t.integer  "answer_count"
    t.string   "resolution"
  end

  create_table "responses", force: :cascade do |t|
    t.string   "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "answer_id"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "admin"
    t.string   "team"
  end

end
