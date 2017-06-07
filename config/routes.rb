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

  get '/' => 'responses#index'
  get '/responses' => 'responses#index'
  get '/responses/new' => 'responses#new'
  post '/responses' => 'responses#create'

  get '/responses/:id' => 'responses#show'

  get '/responses/:id/edit' => 'responses#edit'
  patch '/responses/:id' => 'responses#update'

  delete '/responses/:id' => 'responses#destroy'

  get '/signup' => 'users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/' => 'users#index'
  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'

  get '/users/:id' => 'users#show'

  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'

  delete '/users/:id' => 'users#destroy'

end