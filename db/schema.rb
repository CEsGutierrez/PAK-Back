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

ActiveRecord::Schema.define(version: 2020_07_13_202918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "ingredient_id"
    t.bigint "procedural_step_id"
    t.string "display_name"
    t.index ["ingredient_id"], name: "index_images_on_ingredient_id"
    t.index ["procedural_step_id"], name: "index_images_on_procedural_step_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "recipe_id"
    t.string "amount"
    t.string "unit"
    t.string "name"
    t.string "sub_note"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "procedural_steps", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "recipe_id"
    t.string "sub_note"
    t.string "step_number"
    t.string "description"
    t.index ["recipe_id"], name: "index_procedural_steps_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "time_estimate"
    t.string "description"
    t.boolean "main"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_recipes_on_category_id"
  end

  add_foreign_key "images", "ingredients"
  add_foreign_key "images", "procedural_steps"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "procedural_steps", "recipes"
  add_foreign_key "recipes", "categories"
end
