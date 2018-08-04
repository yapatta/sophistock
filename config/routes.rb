Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'session#top'
  post '/login', to: 'session#login'
  get '/signup', to: 'session#signup'
  post '/register', to: 'session#register'

  get '/users/me', to: 'user#me'
  get '/users/edit', to: 'user#me_edit'
  patch '/users/edit', to: 'user#edit'
  get '/posts/ajax', to: 'post#ajax_load'
  get '/posts', to: 'post#index'
  get '/posts/new', to: 'post#new'
  get '/posts/:id', to: 'post#show'
  delete '/posts/:id', to: 'post#destroy'
  post '/posts', to: 'post#create'
end
