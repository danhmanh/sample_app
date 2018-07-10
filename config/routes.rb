Rails.application.routes.draw do
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/about", to: "static_pages#about"
  root "static_pages#home"
  scope "(:locale)", locale: /en|vi/ do
    root to: "static_pages#home"
  end
end
