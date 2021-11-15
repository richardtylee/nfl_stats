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

ActiveRecord::Schema.define(version: 2021_11_15_100013) do

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "team"
    t.string "position"
    t.integer "rushing_attempts"
    t.decimal "rushing_attempts_per_game"
    t.integer "rushing_yards"
    t.decimal "rushing_avg"
    t.decimal "rushing_yards_per_game"
    t.integer "rushing_touchdowns"
    t.integer "rushing_long"
    t.boolean "rushing_long_touchdown_occurred"
    t.integer "rushing_1st_downs"
    t.decimal "rushing_1st_down_percentage"
    t.integer "rushing_20_yards_plus_plays"
    t.integer "rushing_40_yards_plus_plays"
    t.integer "fumbles"
  end

end
