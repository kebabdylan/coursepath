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

ActiveRecord::Schema.define(:version => 20121218193443) do

  create_table "assignments", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "priority"
    t.integer  "block_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "assignments", ["block_id"], :name => "index_assignments_on_block_id"

  create_table "blocks", :force => true do |t|
    t.string   "title"
    t.integer  "weeks"
    t.integer  "priority"
    t.integer  "step_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "blocks", ["step_id"], :name => "index_blocks_on_step_id"

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.string   "code"
    t.integer  "number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "quizzes", :force => true do |t|
    t.string   "title"
    t.string   "questions"
    t.integer  "priority"
    t.integer  "block_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "quizzes", ["block_id"], :name => "index_quizzes_on_block_id"

  create_table "sources", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "questions"
    t.integer  "priority"
    t.integer  "block_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sources", ["block_id"], :name => "index_sources_on_block_id"

  create_table "steps", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "priority"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "course_id"
  end

end
