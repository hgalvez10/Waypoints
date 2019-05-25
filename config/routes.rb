Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/waypoints', to: 'waypoints#index'
  get '/vehicle', to: 'vehicles#new'
  post '/api/v1/gps', to: 'vehicles#create'
  get  '/show', to: 'vehicles#show'
end
