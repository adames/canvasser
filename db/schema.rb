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

ActiveRecord::Schema.define(version: 20170924185611) do

  create_table "volunteers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_initial"
    t.datetime "date_of_birth"
    t.text "political_interests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voters", force: :cascade do |t|
    t.integer "volunteer_id"
    t.string "name"
    t.integer "age"
    t.text "location"
    t.bigint "phone_number"
    t.datetime "last_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["volunteer_id"], name: "index_voters_on_volunteer_id"
  end

end
