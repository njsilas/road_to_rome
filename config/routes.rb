Rails.application.routes.draw do
  get '/' => 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  resources :booked_trips
  resources :destinations do 
   resources :flights, only: [:edit, :new]
  end
  resources :flights do
    resources :booked_trips, only: [:edit, :new]
  end

  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
