Rails.application.routes.draw do
  get '/' => 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  resources :gears
  resources :booked_trips
  resources :destinations
  resources :flights
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
