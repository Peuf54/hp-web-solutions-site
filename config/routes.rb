Rails.application.routes.draw do
  get 'nos_realisations', to: 'pages#nos_realisations'
  get 'tarifs', to: 'pages#tarifs'
  get 'mentions_legales', to: 'pages#mentions_legales'
  get 'cgu', to: 'pages#cgu'
  root to: 'pages#accueil'
  
  resources :contacts, only: %w[new create]
  resources :articles_categories, only: %w[index destroy create]
  resources :articles

  devise_for :users, :skip => [:registrations] 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
