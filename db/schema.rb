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

ActiveRecord::Schema[7.1].define(version: 2024_04_27_102719) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "quiz_colors", force: :cascade do |t|
    t.string "name", null: false
    t.integer "code_r", null: false
    t.integer "code_g", null: false
    t.integer "code_b", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_quiz_colors_on_name", unique: true
  end

  create_table "quiz_images", force: :cascade do |t|
    t.string "image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image"], name: "index_quiz_images_on_image", unique: true
  end

end
