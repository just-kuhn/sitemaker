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

ActiveRecord::Schema.define(version: 20160820130452) do

  create_table "menus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "menu_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "tags",       limit: 65535
    t.string   "logo_url"
    t.integer  "theme_id"
    t.integer  "menu_id"
    t.integer  "temp_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["menu_id"], name: "index_sites_on_menu_id", using: :btree
    t.index ["temp_id"], name: "index_sites_on_temp_id", using: :btree
    t.index ["theme_id"], name: "index_sites_on_theme_id", using: :btree
  end

  create_table "temps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "temp_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "theme_color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "sites", "menus"
  add_foreign_key "sites", "temps"
  add_foreign_key "sites", "themes"
end
