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

ActiveRecord::Schema.define(version: 2019_05_05_154305) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "banner_principals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contatos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "endereco"
    t.string "numero"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emails", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "principal", default: false
  end

  create_table "homes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "painel_one_title"
    t.text "painel_one_description"
    t.string "painel_two_title"
    t.text "painel_two_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "material_coletados", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "ano"
    t.string "qnt_plastico"
    t.string "qnt_aparas"
    t.string "qnt_fotolitos"
    t.string "qnt_ferro"
    t.string "qnt_papelao"
    t.string "qnt_aluminio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nossa_historia", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "painel_title"
    t.text "painel_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "politica_de_qualidades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "painel_one_title"
    t.text "painel_one_description"
    t.string "painel_two_title"
    t.text "painel_two_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quem_somos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "painel_title"
    t.text "painel_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sistema_de_impressaos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "painel_principal_title"
    t.text "painel_principal_description"
    t.string "painel_one_title"
    t.text "painel_one_description"
    t.string "painel_two_title"
    t.text "painel_two_description"
    t.string "painel_tree_title"
    t.text "painel_tree_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sustentabilidades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "painel_title"
    t.text "painel_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telefones", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "principal", default: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "login"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
