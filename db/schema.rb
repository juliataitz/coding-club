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

ActiveRecord::Schema.define(version: 20150722190832) do

  create_table "clubs", force: :cascade do |t|
    t.string "leader_first"
    t.string "leader_last"
    t.string "leader_email"
    t.string "leader_size"
    t.string "leader_graduation"
    t.string "school_name"
    t.string "school_road"
    t.string "school_city"
    t.string "school_state"
    t.string "school_zip"
  end

  create_table "members", force: :cascade do |t|
    t.string  "member_first"
    t.string  "member_last"
    t.string  "member_email"
    t.string  "member_size"
    t.string  "member_graduation"
    t.integer "club_id"
  end

end
