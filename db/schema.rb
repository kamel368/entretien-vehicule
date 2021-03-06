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

ActiveRecord::Schema.define(version: 2020_07_27_163057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pannes", force: :cascade do |t|
    t.string "type"
    t.boolean "assurance"
    t.string "status"
    t.date "date_debut"
    t.date "date_fin_estime"
    t.date "date_fin"
    t.text "commentaire"
    t.string "nom"
    t.decimal "tarif"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reparateurs", force: :cascade do |t|
    t.string "nom"
    t.string "adresse"
    t.integer "tel"
    t.string "mail"
    t.string "nom_contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicules", force: :cascade do |t|
    t.string "marque"
    t.string "modele"
    t.string "immatriculation"
    t.date "annee"
    t.date "date_achat"
    t.integer "km_achat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
