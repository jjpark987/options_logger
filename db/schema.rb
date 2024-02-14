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

ActiveRecord::Schema[7.1].define(version: 2024_02_14_164018) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "covered_call_writing", force: :cascade do |t|
    t.string "ticker"
    t.float "initial_stock"
    t.float "current_stock"
    t.integer "shares"
    t.string "expiration"
    t.float "strike"
    t.float "premium"
    t.string "initial_type"
    t.string "current_type"
    t.float "dividends"
    t.float "per_option_fee"
    t.float "margin_rate"
    t.float "margin_interest_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
