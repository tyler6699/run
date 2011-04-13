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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110413000032) do

  create_table "results", :force => true do |t|
    t.integer  "runner_id"
    t.integer  "route_id"
    t.integer  "custom_distance"
    t.integer  "time_minutes"
    t.date     "date_of_run"
    t.integer  "effort"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "weather"
    t.string   "feelings"
    t.time     "time"
    t.integer  "exercise_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "url"
    t.integer  "distance"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "runner_id"
  end

  create_table "runners", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
  end

end
