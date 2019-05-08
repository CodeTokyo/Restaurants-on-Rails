Rails.application.routes.draw do
  devise_for :restaurants
  devise_for :customers

  get '/meals' => 'meals#index'
  get '/meals/new' => 'meals#new'
  post '/meals' => 'meals#create'
  get '/meals/:id' => 'meals#show'
  get '/meals/:id/edit' => 'meals#edit'
  put '/meals/:id' =>'meals#update'
  delete '/meals/:id' => 'meals#destroy'

  get '/cart' => 'customer_meals#index'
  post '/cart' => 'customer_meals#create'
  delete '/cart/:id' => 'customer_meals#destroy'

  get '/restaurants' => 'restaurants#index'
  get '/restaurants/:id' => 'restaurants#show'

  get '/customers' => 'customers#index'
  get '/customers/new' => 'customers#new'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show'
  get '/customers/:id/edit' => 'customers#edit'
  put '/customers/:id' =>'customers#update'
  delete '/customers/:id' => 'customers#destroy'  

end
