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

ActiveRecord::Schema.define(version: 20141014223438) do

  create_table "authors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "posts_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "slug"
  end

  add_index "authors", ["email"], name: "index_authors_on_email", unique: true
  add_index "authors", ["posts_id"], name: "index_authors_on_posts_id"
  add_index "authors", ["reset_password_token"], name: "index_authors_on_reset_password_token", unique: true
  add_index "authors", ["slug"], name: "index_authors_on_slug"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.date     "date"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "posts", ["author_id"], name: "index_posts_on_author_id"
  add_index "posts", ["slug"], name: "index_posts_on_slug"

end
