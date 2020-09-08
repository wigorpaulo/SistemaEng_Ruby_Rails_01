json.extract! tipo_documento, :id, :descricao, :status, :created_at, :updated_at
json.url tipo_documento_url(tipo_documento, format: :json)
