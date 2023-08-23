Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :artists, only: [:index, :show]
  resources :releases, only: [:index, :show]
  resources :contacts, only: [:new, :create]
  get 'contacts/sent'
end
