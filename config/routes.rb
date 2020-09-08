Rails.application.routes.draw do

  root "logins#index"

  resources :fornecedor_contatos
  resources :fornecedor_enderecos
  resources :fornecedors
  resources :pessoa_contatos
  resources :pessoa_documentos
  resources :pessoa_enderecos
  resources :referencia
  resources :tipo_documentos
  resources :tipo_enderecos
  resources :pessoas
  resources :empresas
  resources :enderecos
  resources :ceps
  resources :bairros
  resources :cidades
  resources :estados
  resources :pais

  resources :logins
  resources :menus
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
