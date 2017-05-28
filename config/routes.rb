Rails.application.routes.draw do
  get '/' => 'questions#index'
  get '/questions' => 'questions#index'
  get '/questions/new' => 'questions#new'
  post '/questions' => 'questions#create'

  get '/questions/:id' => 'questions#show'

  get '/questions/:id/edit' => 'questions#edit'
  patch '/questions/:id' => 'questions#update'

  delete '/questions/:id' => 'questions#destroy'

  get '/answers/:id/edit' => 'answers#edit'
  patch '/answers/:id' => 'answers#update'
end