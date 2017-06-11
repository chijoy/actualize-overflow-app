ActiveRecord::Schema.define(version: 20170607164400) do
  # These are extensions that must be enabled in order to support this database
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
