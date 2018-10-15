Rails.application.routes.draw do
  get '/users', to: 'users#index'

  get '/users/new', to: 'users#new'

  # createはHTTPリクエストはpost
  post '/users', to: 'users#create'

end
