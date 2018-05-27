Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'session#top'
  post '/login', to: 'session#login'
  get '/signup', to: 'session#signup'
  post '/register', to: 'session#register'

  get '/profiles/me', to: 'profile#me'
  get '/posts/ajax', to: 'post#ajax_load'
  get '/post/new', to: 'post#new'
  get '/post/:id', to: 'post#show'
  post '/post', to: 'post#create'
end
