Rails.application.routes.draw do 
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show'
  post '/products', to: 'products#create'
  put '/products/:id', to: 'products#update'
  delete '/products/:id', to: 'products#delete'
end
