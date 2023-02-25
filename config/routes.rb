Rails.application.routes.draw do
  resources :articles
  get 'sheet/index'

  resources :sheet

  # Defines the root path route ("/")
  # root "articles#index"
  root 'sheet#index'
end
