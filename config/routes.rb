Rails.application.routes.draw do
  get 'nos_realisations', to: 'pages#nos_realisations'
  get 'contact', to: 'pages#contact'
  get 'tarifs', to: 'pages#tarifs'
  root to: 'pages#accueil'
  get 'pages/accueil'
  get 'pages/tarifs'
  get 'pages/contact'
  get 'pages/nos_realisations'
  resources :contacts, only: %w[new create]

  post 'send_new_contact', to: 'pages#send_new_contact', as: :send_new_contact
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
