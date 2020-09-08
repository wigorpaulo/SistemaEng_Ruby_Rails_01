json.extract! tipo_endereco, :id, :descricao, :status, :created_at, :updated_at
json.url tipo_endereco_url(tipo_endereco, format: :json)
