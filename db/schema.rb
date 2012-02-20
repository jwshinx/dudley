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

ActiveRecord::Schema.define(:version => 20120219210906) do

  create_table "products", :force => true do |t|
    t.integer  "prodid"
    t.integer  "sequence"
    t.integer  "like1id"
    t.integer  "like2id"
    t.integer  "like3id"
    t.integer  "like4id"
    t.decimal  "price",       :precision => 10, :scale => 0
    t.decimal  "shipping",    :precision => 10, :scale => 0
    t.string   "category"
    t.string   "name"
    t.string   "maintn"
    t.string   "tn1"
    t.string   "full1"
    t.string   "tn2"
    t.string   "full2"
    t.string   "tn3"
    t.string   "full3"
    t.string   "like1tn"
    t.string   "like2tn"
    t.string   "like3tn"
    t.string   "like4tn"
    t.text     "description"
    t.text     "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
