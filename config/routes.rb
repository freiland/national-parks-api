Rails.application.routes.draw do
  resources :parks

  get 'parks/random', to: 'parks#random'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
