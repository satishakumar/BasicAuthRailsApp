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

ActiveRecord::Schema.define(version: 20151204200535) do

  create_table "entries", force: true do |t|
    t.string   "name"
    t.boolean  "winner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_chars", id: false, force: true do |t|
    t.string "char_name", limit: 20
  end

  create_table "special_chars1", id: false, force: true do |t|
    t.string "char_name", limit: 20
  end

  create_table "training_brief_logs", force: true do |t|
    t.string   "description",                             default: "",    null: false
    t.string   "belongs_to_type",                         default: "",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ip"
    t.integer  "actor_id",                      limit: 8, default: 0,     null: false
    t.integer  "belongs_to_id",                 limit: 8, default: 0,     null: false
    t.string   "entity_type"
    t.integer  "entity_id",                     limit: 8
    t.string   "entity_title"
    t.integer  "vcgblorganization_id"
    t.integer  "create_vcgblorganization_id"
    t.integer  "update_vcgblorganization_id"
    t.integer  "recent_activity_visibility_id"
    t.integer  "visibility"
    t.string   "actor_name"
    t.string   "controller"
    t.string   "action"
    t.text     "browser"
    t.integer  "community_id"
    t.text     "params"
    t.datetime "expiry"
    t.boolean  "is_target",                               default: false
    t.float    "response_time"
  end

  add_index "training_brief_logs", ["actor_id"], name: "index_brief_logs_on_actor_id", using: :btree
  add_index "training_brief_logs", ["belongs_to_id"], name: "idx_belongs_to_id", using: :btree
  add_index "training_brief_logs", ["belongs_to_id"], name: "index_brief_logs_on_belongs_to_id", using: :btree
  add_index "training_brief_logs", ["community_id"], name: "index_brief_logs_on_community_id", using: :btree
  add_index "training_brief_logs", ["created_at"], name: "idx_brief_log_created_at", using: :btree
  add_index "training_brief_logs", ["created_at"], name: "index_brief_logs_on_created_at", using: :btree
  add_index "training_brief_logs", ["entity_id"], name: "idx_entity_id", using: :btree
  add_index "training_brief_logs", ["entity_id"], name: "index_brief_logs_on_entity_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
