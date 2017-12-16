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

ActiveRecord::Schema.define(version: 20171215030705) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "jobadvert_id"
    t.integer  "worker_id"
    t.date     "begin"
    t.date     "end"
    t.text     "descripction"
    t.float    "salary"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "contracts", ["jobadvert_id"], name: "index_contracts_on_jobadvert_id"
  add_index "contracts", ["worker_id"], name: "index_contracts_on_worker_id"

  create_table "employers", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.date     "birth"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobadverts", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "vacancies"
    t.integer  "employer_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "city_id"
  end

  add_index "jobadverts", ["category_id"], name: "index_jobadverts_on_category_id"
  add_index "jobadverts", ["city_id"], name: "index_jobadverts_on_city_id"
  add_index "jobadverts", ["employer_id"], name: "index_jobadverts_on_employer_id"

  create_table "postulates", force: :cascade do |t|
    t.integer  "jobadvert_id"
    t.integer  "worker_id"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "postulates", ["jobadvert_id"], name: "index_postulates_on_jobadvert_id"
  add_index "postulates", ["worker_id"], name: "index_postulates_on_worker_id"

  create_table "qualifies", force: :cascade do |t|
    t.integer  "worker_id"
    t.integer  "score_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "qualifies", ["score_id"], name: "index_qualifies_on_score_id"
  add_index "qualifies", ["worker_id"], name: "index_qualifies_on_worker_id"

  create_table "scores", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "workers", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.integer  "phone"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "workers", ["city_id"], name: "index_workers_on_city_id"

end
