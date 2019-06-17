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

ActiveRecord::Schema.define(version: 2019_06_17_132721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.boolean "display_in_index", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "communes", force: :cascade do |t|
    t.string "name"
    t.boolean "display_in_index", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joboffers", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image"
    t.integer "budget"
    t.bigint "region_id"
    t.bigint "commune_id"
    t.bigint "city_id"
    t.bigint "user_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_joboffers_on_city_id"
    t.index ["commune_id"], name: "index_joboffers_on_commune_id"
    t.index ["region_id"], name: "index_joboffers_on_region_id"
    t.index ["skill_id"], name: "index_joboffers_on_skill_id"
    t.index ["user_id"], name: "index_joboffers_on_user_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.boolean "display_in_index", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "display_in_index", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.text "description"
    t.bigint "region_id"
    t.bigint "commune_id"
    t.bigint "city_id"
    t.bigint "skill_id"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["commune_id"], name: "index_users_on_commune_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["region_id"], name: "index_users_on_region_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["skill_id"], name: "index_users_on_skill_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "joboffers", "cities"
  add_foreign_key "joboffers", "communes"
  add_foreign_key "joboffers", "regions"
  add_foreign_key "joboffers", "skills"
  add_foreign_key "joboffers", "users"
  add_foreign_key "users", "cities"
  add_foreign_key "users", "communes"
  add_foreign_key "users", "regions"
  add_foreign_key "users", "skills"
end
