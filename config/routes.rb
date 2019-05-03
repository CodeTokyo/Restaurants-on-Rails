Rails.application.routes.draw do
  devise_for :restaurants, path: 'restaurants', controllers: {
        sessions: 'restaurants/sessions',
        registrations: 'restaurants/registrations'
      }

  devise_for :customers, path: 'customers', controllers: {
        sessions: 'customers/sessions',
        registrations: 'customers/registrations'
      }

  get '/' => 'meals#index'
  get '/meals' => 'meals#index'
  get '/meals/new' => 'meals#new'
  post '/meals' => 'meals#create'
  get '/meals/:id' => 'meals#show'
  get '/meals/:id/edit' => 'meals#edit'
end
