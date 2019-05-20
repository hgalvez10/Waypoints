Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :vehicles

  #get '/vehicles/new', to: 'vehicles#new'
  #post '/vehicles', to: 'vehicles#create'
  #get  '/vehicles/:vehicle_identifier', to: 'vehicles#show'
end
