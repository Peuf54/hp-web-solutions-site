Rails.application.routes.draw do
  get 'nos_realisations', to: 'pages#nos_realisations'
  get 'tarifs', to: 'pages#tarifs'
  # root to: 'pages#accueil'
  root to: 'pages#nos_realisations'
  
  resources :contacts, only: %w[new create]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
