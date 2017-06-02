Rails.application.routes.draw do
  get '/' => 'questions#index'
  get '/questions' => 'questions#index'
  get '/questions/new' => 'questions#new'
  post '/questions' => 'questions#create'

  get '/questions/:id' => 'questions#show'

  get '/questions/:id/edit' => 'questions#edit'
  patch '/questions/:id' => 'questions#update'

  delete '/questions/:id' => 'questions#destroy'


  get '/' => 'answers#index'
  get '/answers' => 'answers#index'
  get '/answers/new' => 'answers#new'
  post '/answers' => 'answers#create'

  get '/answers/:id' => 'answers#show'

  get '/answers/:id/edit' => 'answers#edit'
  patch '/answers/:id' => 'answers#update'

  delete '/answers/:id' => 'answers#destroy'

  get '/signup' => 'users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post '/users' => 'users#create'
end