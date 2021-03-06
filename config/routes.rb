Rails.application.routes.draw do

  get 'password_resets/new'
  get 'password_resets/edit'
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/about", to: "static_pages#about"
  root "static_pages#home"
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  scope "(:locale)", locale: /en|vi/ do
    root to: "static_pages#home"
  end
end
