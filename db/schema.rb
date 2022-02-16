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

ActiveRecord::Schema[7.0].define(version: 2022_02_16_233638) do
  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generations", force: :cascade do |t|
    t.string "main_region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "moves", force: :cascade do |t|
    t.string "name"
    t.integer "type_id", null: false
    t.integer "accuracy"
    t.integer "power"
    t.integer "pp"
    t.integer "priority"
    t.string "ailment"
    t.integer "ailment_chance"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_moves_on_type_id"
  end

  create_table "pokemon_abilities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pokemon_id", null: false
    t.integer "ability_id", null: false
    t.index ["ability_id"], name: "index_pokemon_abilities_on_ability_id"
    t.index ["pokemon_id"], name: "index_pokemon_abilities_on_pokemon_id"
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.integer "pokemon_id", null: false
    t.integer "type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_id"], name: "index_pokemon_types_on_pokemon_id"
    t.index ["type_id"], name: "index_pokemon_types_on_type_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.string "sprite"
    t.integer "hp"
    t.integer "attack"
    t.integer "defence"
    t.integer "special_attack"
    t.integer "special_defence"
    t.integer "speed"
    t.integer "generation_id", null: false
    t.integer "weight"
    t.integer "evolution_chain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generation_id"], name: "index_pokemons_on_generation_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pokemon_abilities", "abilities"
  add_foreign_key "pokemon_abilities", "pokemons"
  add_foreign_key "pokemon_types", "pokemons"
  add_foreign_key "pokemon_types", "types"
  add_foreign_key "pokemons", "generations"
end
