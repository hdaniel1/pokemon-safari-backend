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

ActiveRecord::Schema.define(version: 2019_05_31_171458) do

  create_table "natures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "species"
    t.string "nature"
    t.string "ability"
    t.string "type_1"
    t.string "type_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sprite_image"
    t.integer "nature_id"
    t.string "shiny_sprite"
  end

  create_table "trainer_pokemons", force: :cascade do |t|
    t.string "nickname"
    t.integer "pokemon_id"
    t.integer "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nature"
    t.boolean "is_shiny"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
