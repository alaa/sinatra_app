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

ActiveRecord::Schema.define(version: 20150301142222) do

  create_table "users", force: :cascade do |t|
    t.string "email",                limit: 255
    t.string "salt",                 limit: 255
    t.string "password",             limit: 255
    t.string "create_timestamp",     limit: 255
    t.string "update_timestamp",     limit: 255
    t.string "last_login_timestamp", limit: 255
  end

end
