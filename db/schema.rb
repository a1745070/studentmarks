# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_19_110535) do

  create_table "assignments", force: :cascade do |t|
    t.string "courseid"
    t.string "assignmentid"
    t.string "assignmentname"
    t.text "assignmentdescr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "grade"
    t.integer "mark"
    t.string "comments"
  end

  create_table "courses", force: :cascade do |t|
    t.string "courseid"
    t.string "coursename"
    t.text "coursedescr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string "username"
    t.string "studentid"
    t.string "password"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "authorisationlvl"
  end

  create_table "student_marks", force: :cascade do |t|
    t.string "studentid"
    t.string "courseid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "grade"
    t.integer "mark"
  end

end
