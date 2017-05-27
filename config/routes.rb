Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'questions#index'
  get '/questions' => 'questions#index'
  get '/questions/new' => 'questions#new'
  post '/questions' => 'questions#create'

  get '/questions/:id' => 'questions#show'

  get '/questions/:id/edit' => 'questions#edit'
  patch '/questions/:id' => 'questions#update'

  delete '/questions/:id' => 'questions#destroy'
end
