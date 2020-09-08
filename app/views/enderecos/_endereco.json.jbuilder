json.extract! endereco, :id, :descricao, :complemento, :numero, :id_bairro, :id_cep, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
