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

ActiveRecord::Schema.define(version: 20140926215517) do

  create_table "champion_selections", force: true do |t|
    t.integer "team_id"
    t.integer "champion_id"
    t.boolean "picked",      default: false
  end

  create_table "champions", force: true do |t|
    t.string   "name"
    t.float    "win_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "champions_drafts", force: true do |t|
    t.integer "draft_id"
    t.integer "champion_id"
  end

  add_index "champions_drafts", ["champion_id"], name: "index_champions_drafts_on_champion_id"
  add_index "champions_drafts", ["draft_id"], name: "index_champions_drafts_on_draft_id"

  create_table "drafts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.integer "draft_id"
  end

  add_index "teams", ["draft_id"], name: "index_teams_on_draft_id"

end
