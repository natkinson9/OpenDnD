Rails.application.routes.draw do
  resources :char_sheets
  get 'char_sheets/index'

  # Defines the root path route ("/")
  # root "articles#index"
  root 'char_sheets#index'
end
