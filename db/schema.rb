# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_01_214503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bullet_types", force: :cascade do |t|
    t.string "calibre"
    t.integer "muzzle_velocity"
    t.integer "weight"
  end

  create_table "guns", force: :cascade do |t|
    t.string "name"
    t.integer "bullet_type_id"
    t.float "barrel_length"
    t.string "image"
  end

  create_table "user_owned_guns", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gun_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
