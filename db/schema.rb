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

ActiveRecord::Schema.define(version: 20160328200547) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "contactos", force: :cascade do |t|
    t.string   "email"
    t.string   "nombre"
    t.string   "empresa"
    t.string   "ciudad"
    t.string   "telefono"
    t.string   "asunto"
    t.text     "mensaje"
    t.string   "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiencias", force: :cascade do |t|
    t.string   "nombre"
    t.string   "entidad"
    t.string   "contratante"
    t.string   "unidad_de_negocio"
    t.string   "ciudad"
    t.date     "fecha_inicio"
    t.date     "fecha_terminacion"
    t.integer  "valor_contrato"
    t.string   "numero_contrato"
    t.string   "estado_experiencia"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "noticias", force: :cascade do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.string   "estado_noticia"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.decimal  "precio",              precision: 10, scale: 2
    t.text     "descripcion"
    t.integer  "usuario_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "productos", ["usuario_id"], name: "index_productos_on_usuario_id", using: :btree

  create_table "quienes_somos", force: :cascade do |t|
    t.text     "mision"
    t.text     "vision"
    t.text     "politica_integral"
    t.text     "valores_corporativos"
    t.text     "historia"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string   "tipo"
    t.text     "descripcion"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "productos", "usuarios"
end
