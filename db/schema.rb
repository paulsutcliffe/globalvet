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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130618161229) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "categorias", :force => true do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.string   "slug"
    t.integer  "reino_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categorias", ["slug"], :name => "index_categorias_on_slug", :unique => true

  create_table "contactos", :force => true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "telefono"
    t.text     "mensaje"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "diapositivas", :force => true do |t|
    t.string   "slide"
    t.string   "titulo"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "marcas", :force => true do |t|
    t.string   "logo"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "noticias", :force => true do |t|
    t.string   "titulo"
    t.text     "contenido"
    t.string   "imagen"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "noticias", ["slug"], :name => "index_noticias_on_slug", :unique => true

  create_table "productos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "archivo_pdf"
    t.string   "imagen"
    t.string   "slug"
    t.integer  "tipo_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "productos", ["slug"], :name => "index_productos_on_slug", :unique => true

  create_table "reinos", :force => true do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "reinos", ["slug"], :name => "index_reinos_on_slug", :unique => true

  create_table "subcategorias", :force => true do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.string   "slug"
    t.integer  "categoria_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "subcategorias", ["slug"], :name => "index_subcategorias_on_slug", :unique => true

  create_table "tipos", :force => true do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.string   "slug"
    t.integer  "subcategoria_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "tipos", ["slug"], :name => "index_tipos_on_slug", :unique => true

end
