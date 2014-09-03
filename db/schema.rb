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

ActiveRecord::Schema.define(:version => 20140903081439) do

  create_table "applications", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "year"
    t.string   "major"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.text     "extracurriculars"
    t.text     "hobbies"
    t.text     "why_sep"
    t.text     "short_answer1"
    t.text     "short_answer2"
    t.text     "short_answer3"
    t.text     "short_answer4"
    t.string   "reference"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.text     "availabilities"
  end

  create_table "brothers", :force => true do |t|
    t.string   "name"
    t.string   "pledge_class"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "status"
    t.string   "education"
    t.string   "work"
    t.text     "press"
    t.string   "projects"
  end

end
