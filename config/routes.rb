Rails.application.routes.draw do
  get 'properties/index'
  get 'properties/show'
  get '/properties', to: 'properties#index', as: 'properties_list'
  get '/properties/:property_id', to: 'properties#show', as: 'property_details'
  post '/properties/:property_id', to: 'properties#new_lead', as: 'new_lead'
  root to: 'properties#index'
end
