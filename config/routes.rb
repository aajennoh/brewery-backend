Rails.application.routes.draw do
  resources :users, only: [:index, :create, :show]
  resources :breweries, only: [:create]

  post "/login", to: "auth#login"
  get '/favorite/:id/brewery/:brewery_id', to: 'users#favorite'

  get "/auto_login", to: "auth#auto_login"
  get '/brewery/:id/likes', to: 'breweries#likes'
  get '/brewery/:id/dislikes', to: 'breweries#dislikes'
  get '/breweries/most_liked', to: 'breweries#most_liked'
  get '/breweries/get_page/:page', to: 'breweries#get_page'
  get '/breweries/get_state/:state/:page', to: 'breweries#get_state'
  post '/breweries/find_brewery', to: 'breweries#find_brewery'
  get 'breweries/get_location', to: 'breweries#get_location'
end