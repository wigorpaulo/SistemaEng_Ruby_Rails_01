json.extract! usuario, :id, :id_pessoa, :user_name, :senha, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
