Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'session#top'
  post '/login', to: 'session#login'
  delete '/logout', to: 'session#log_out'
  get '/signup', to: 'session#signup'
  post '/register', to: 'session#register'

  get '/users/me', to: 'user#me'
  get '/users/edit', to: 'user#me_edit'
  patch '/users/edit', to: 'user#edit'

  get '/posts/ajax', to: 'post#ajax_load'
  get '/posts', to: 'post#index'
  get '/posts/new', to: 'post#new'
  get '/posts/:id', to: 'post#show'
  get '/posts/:id/edit', to: 'post#edit'
  patch '/posts/:id', to: 'post#edit_finish'
  delete '/posts/:id', to: 'post#destroy'
  post '/posts', to: 'post#create'

  get '/timeline', to: 'post#timeline'
end
