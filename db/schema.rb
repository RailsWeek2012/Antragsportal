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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120727120828) do

  create_table "decisions", :force => true do |t|
    t.integer  "vote_id"
    t.integer  "motion_id"
    t.text     "text"
    t.text     "commitee_name"
    t.date     "commitee_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "motions", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.date     "date"
    t.string   "register"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "motions_projects", :id => false, :force => true do |t|
    t.integer "motion_id"
    t.integer "project_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "motion_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "votes", :force => true do |t|
    t.string   "cdu_party"
    t.string   "spd_party"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
