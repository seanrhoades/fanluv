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

ActiveRecord::Schema.define(version: 20160314033623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.string   "image_url"
    t.string   "description"
    t.string   "album1title"
    t.string   "album1image"
    t.string   "album1itunes"
    t.string   "album2title"
    t.string   "album2image"
    t.string   "album2itunes"
    t.string   "album3title"
    t.string   "album3image"
    t.string   "album3itunes"
    t.string   "album4title"
    t.string   "album4image"
    t.string   "album4itunes"
  end

  add_index "artists", ["email"], name: "index_artists_on_email", unique: true, using: :btree

  create_table "fans", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.string   "image_url"
  end

  add_index "fans", ["email"], name: "index_fans_on_email", unique: true, using: :btree

  create_table "luvs", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "fan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "luvs", ["artist_id"], name: "index_luvs_on_artist_id", using: :btree
  add_index "luvs", ["fan_id", "artist_id"], name: "index_luvs_on_fan_id_and_artist_id", unique: true, using: :btree
  add_index "luvs", ["fan_id"], name: "index_luvs_on_fan_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image_url"
    t.integer  "price"
    t.string   "category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "artist_id"
  end

end
