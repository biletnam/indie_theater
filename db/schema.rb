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

ActiveRecord::Schema.define(:version => 20130610155248) do

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.string   "rating"
    t.datetime "opening_date"
    t.string   "starring"
    t.string   "director"
    t.integer  "runtime"
    t.string   "released_by"
    t.string   "genres"
    t.boolean  "three_d"
  end

end
