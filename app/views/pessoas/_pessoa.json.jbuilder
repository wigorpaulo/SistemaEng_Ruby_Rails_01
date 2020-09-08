json.extract! pessoa, :id, :cpf, :nome, :id_empresa, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
