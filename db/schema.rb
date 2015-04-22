# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150421233141) do

  create_table "nota", force: :cascade do |t|
    t.integer  "valor",      limit: 4
    t.text     "comentario", limit: 65535
    t.integer  "posto_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "nota", ["posto_id"], name: "index_nota_on_posto_id", using: :btree

  create_table "posto", force: :cascade do |t|
    t.string   "nome",       limit: 255, null: false
    t.string   "logradouro", limit: 255, null: false
    t.integer  "numero",     limit: 4
    t.string   "bairro",     limit: 255, null: false
    t.string   "cidade",     limit: 255, null: false
    t.float    "latitude",   limit: 24,  null: false
    t.float    "longitude",  limit: 24,  null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "uf",         limit: 255
  end

end
