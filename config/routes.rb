Rails.application.routes.draw do
  devise_for :restaurants
  devise_for :customers

  get '/customers/:id' => 'customers#show' 

  get '/' => 'restaurants#index'
  get '/restaurants' => 'restaurants#index'
  get '/restaurants/:id' => 'restaurants#show'
  get '/sign_up' => 'restaurants#sign_up'

 
  get '/cart' => 'customer_meals#index'
  post '/cart' => 'customer_meals#create'
  delete '/cart/:id' => 'customer_meals#destroy'


  get '/meals/new' => 'meals#new'
  post '/meals' => 'meals#create'
  get '/meals/:id' => 'meals#show'
  get '/meals/:id/edit' => 'meals#edit'
  put '/meals/:id' =>'meals#update'
  delete '/meals/:id' => 'meals#destroy'


end
