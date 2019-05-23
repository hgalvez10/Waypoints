Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :vehicles
  resources :waypoints

  post '/api/v1/gps', to: 'waypoints#create'
  #get  '/vehicles/:vehicle_identifier', to: 'vehicles#show'
end
