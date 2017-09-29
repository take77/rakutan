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

ActiveRecord::Schema.define(version: 20170923073245) do

  create_table "affiliations", force: :cascade do |t|
    t.string   "college",    limit: 255, default: "", null: false
    t.string   "department", limit: 255, default: "", null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "course",     limit: 255, default: ""
  end

  add_index "affiliations", ["college", "department", "course"], name: "affiliation_unique_again", unique: true, using: :btree

  create_table "exam_comments", force: :cascade do |t|
    t.text     "text",       limit: 65535,             null: false
    t.integer  "parent_id",  limit: 4,                 null: false
    t.integer  "like",       limit: 4,     default: 0
    t.integer  "exam_id",    limit: 4,                 null: false
    t.integer  "user_id",    limit: 4,                 null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "status",     limit: 4,                 null: false
  end

  create_table "exams", force: :cascade do |t|
    t.date     "taken_date",                                null: false
    t.text     "explanation",    limit: 65535
    t.integer  "subject_id",     limit: 4,                  null: false
    t.integer  "affiliation_id", limit: 4,                  null: false
    t.string   "title",          limit: 255,   default: "", null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "user_id",        limit: 4,                  null: false
  end

  create_table "feed_contents", force: :cascade do |t|
    t.integer  "content_id",     limit: 4
    t.string   "content_type",   limit: 255
    t.integer  "affiliation_id", limit: 4,   null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "subject_id",     limit: 4,   null: false
    t.integer  "user_id",        limit: 4
  end

  create_table "items", force: :cascade do |t|
    t.binary   "file",       limit: 65535, null: false
    t.integer  "exam_id",    limit: 4,     null: false
    t.integer  "report_id",  limit: 4,     null: false
    t.integer  "note_id",    limit: 4,     null: false
    t.integer  "user_id",    limit: 4,     null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "note_comments", force: :cascade do |t|
    t.text     "text",       limit: 65535,             null: false
    t.integer  "parent_id",  limit: 4,                 null: false
    t.integer  "like",       limit: 4,     default: 0
    t.integer  "note_id",    limit: 4,                 null: false
    t.integer  "user_id",    limit: 4,                 null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "status",     limit: 4,                 null: false
  end

  create_table "notes", force: :cascade do |t|
    t.date     "taken_date",                                null: false
    t.string   "title",          limit: 255,   default: "", null: false
    t.text     "explanation",    limit: 65535
    t.integer  "subject_id",     limit: 4,                  null: false
    t.integer  "affiliation_id", limit: 4,                  null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "user_id",        limit: 4,                  null: false
  end

  create_table "report_comments", force: :cascade do |t|
    t.text     "text",       limit: 65535,             null: false
    t.integer  "parent_id",  limit: 4,                 null: false
    t.integer  "like",       limit: 4,     default: 0
    t.integer  "report_id",  limit: 4,                 null: false
    t.integer  "user_id",    limit: 4,                 null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "status",     limit: 4,                 null: false
  end

  create_table "reports", force: :cascade do |t|
    t.date     "deadline",                                  null: false
    t.string   "title",          limit: 255,   default: "", null: false
    t.text     "explanation",    limit: 65535
    t.integer  "subject_id",     limit: 4,                  null: false
    t.integer  "affiliation_id", limit: 4,                  null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "user_id",        limit: 4,                  null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "professor",      limit: 255, default: "", null: false
    t.string   "name",           limit: 255, default: "", null: false
    t.integer  "affiliation_id", limit: 4,                null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "subjects", ["professor", "name", "affiliation_id"], name: "subjects_unique", unique: true, using: :btree

  create_table "user_subjects", force: :cascade do |t|
    t.integer  "user_id",    limit: 4, null: false
    t.integer  "subject_id", limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "avatar",                 limit: 255, default: ""
    t.string   "nickname",               limit: 255, default: "", null: false
    t.integer  "affiliation_id",         limit: 4,                null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["email"], name: "unique_email", unique: true, using: :btree
  add_index "users", ["nickname"], name: "nickname_unique", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
