json.extract! cep, :id, :descricao, :created_at, :updated_at
json.url cep_url(cep, format: :json)
