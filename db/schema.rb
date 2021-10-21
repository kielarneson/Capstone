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

ActiveRecord::Schema.define(version: 2021_10_21_234714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer "api_id"
    t.string "name"
    t.string "away_team"
    t.string "away_team_conference"
    t.string "home_team"
    t.string "home_team_conference"
    t.string "stadium"
    t.string "address"
    t.datetime "start_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lodgings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tailgate_id"
    t.string "lodging_type"
    t.string "lodging_name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parkings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tailgate_id"
    t.string "parking_type"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tailgates", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.string "name"
    t.text "description"
    t.string "address"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean "parking_available"
    t.boolean "private_bathroom"
    t.boolean "alcohol_allowed"
    t.boolean "food_provided"
    t.boolean "family_friendly"
    t.boolean "tv_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "email"
    t.string "password_digest"
    t.string "profile_image_url"
    t.text "about_me"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
