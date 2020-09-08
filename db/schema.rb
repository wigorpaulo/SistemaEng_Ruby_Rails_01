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

ActiveRecord::Schema.define(version: 2020_09_03_020830) do

  create_table "bairros", force: :cascade do |t|
    t.string "descricao"
    t.integer "id_cidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ceps", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cidades", force: :cascade do |t|
    t.string "descricao"
    t.integer "id_estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string "razao_social"
    t.string "fantasia"
    t.integer "id_endereco"
    t.binary "logo_tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "descricao"
    t.string "complemento"
    t.string "numero"
    t.integer "id_bairro"
    t.integer "id_cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string "descricao"
    t.string "uf"
    t.integer "id_pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedor_contatos", force: :cascade do |t|
    t.integer "id_fornecedor"
    t.integer "telefone"
    t.integer "celular"
    t.integer "num_whats_zap"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedor_enderecos", force: :cascade do |t|
    t.integer "id_fornecedor"
    t.integer "id_endereco"
    t.integer "id_tipo_endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "razao_social"
    t.string "fantasia"
    t.string "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pais", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoa_contatos", force: :cascade do |t|
    t.integer "id_pessoa"
    t.integer "telefone"
    t.integer "celular"
    t.integer "num_whats_zap"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoa_documentos", force: :cascade do |t|
    t.integer "id_pessoa"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoa_enderecos", force: :cascade do |t|
    t.integer "id_pessoa"
    t.integer "id_endereco"
    t.integer "id_tipo_endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "cpf"
    t.string "nome"
    t.integer "id_empresa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referencia", force: :cascade do |t|
    t.integer "ref_anomes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_documentos", force: :cascade do |t|
    t.string "descricao"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_enderecos", force: :cascade do |t|
    t.string "descricao"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "id_pessoa"
    t.string "user_name"
    t.string "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
