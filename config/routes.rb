Rails.application.routes.draw do
  get '/' => 'sessions#home'
  get '/auth/:provider/callback' => 'sessions#omniauth'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users do 
    resources :booked_trips, only: [:index, :show]
  end
  resources :booked_trips
  resources :destinations do 
   resources :flights, only: [:edit, :new]
  end
  resources :flights do
    resources :booked_trips, only: [:edit, :new]
  end

  
  match '*unmatched', to: 'application#route_not_found', via: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
