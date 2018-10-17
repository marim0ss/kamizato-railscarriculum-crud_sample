Rails.application.routes.draw do

  get '/users', to: 'users#index'

  get '/users/new', to: 'users#new'

  # createはHTTPリクエストはpost
  post '/users', to: 'users#create'

  # 編集機能
  get '/users/:id/edit', to: 'users#edit'

  # 更新画面へのルート
  patch '/users/:id', to: 'users#update'
  # desrtoyのHTTPリクエストはdelete
  delete '/users/:id', to: 'users#destroy'

  # -------------------------------------------
  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new'
  post '/posts', to: 'posts#create'

  get '/posts/:id/edit', to: 'posts#edit'
  patch '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'
end
