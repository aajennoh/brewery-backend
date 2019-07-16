Rails.application.routes.draw do
  resources :users
  resources :breweries

  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
end
