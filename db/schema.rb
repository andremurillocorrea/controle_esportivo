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

ActiveRecord::Schema.define(version: 2018_12_03_130207) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.string "local"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finances", force: :cascade do |t|
    t.string "debt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "value", precision: 4, scale: 2
    t.string "status"
    t.integer "user_id"
    t.index ["user_id"], name: "index_finances_on_user_id"
  end

  create_table "performances", force: :cascade do |t|
    t.string "style"
    t.integer "distance"
    t.integer "pool_length"
    t.decimal "time"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_performances_on_user_id"
  end

  create_table "presencas", force: :cascade do |t|
    t.integer "treino_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["treino_id"], name: "index_presencas_on_treino_id"
    t.index ["user_id"], name: "index_presencas_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.string "status"
    t.text "additional_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_subscriptions_on_event_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "treinos", force: :cascade do |t|
    t.date "Data"
    t.text "Descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "presenca_id"
    t.index ["presenca_id"], name: "index_treinos_on_presenca_id"
  end

  create_table "treinos_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "treino_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "document"
    t.string "pwd"
    t.integer "age"
    t.decimal "height"
    t.decimal "weight"
    t.string "category"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "extension"
    t.string "photo"
  end

end
