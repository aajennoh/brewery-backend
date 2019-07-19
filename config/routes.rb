Rails.application.routes.draw do
  resources :users, only: [:index, :create, :show]
  resources :breweries, only: :index

  post "/login", to: "auth#login"
  get '/favorite/:id/brewery/:brewery_id', to: 'users#favorite'

  get "/auto_login", to: "auth#auto_login"
  get '/brewery/:id/like', to: 'articles#like'
  get '/brewery/:id/dislike', to: 'articles#dislike'
  get '/brewery/most_liked', to: 'articles#most_liked'
end
