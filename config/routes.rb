Rails.application.routes.draw do
  resources :parks

  get 'random_park/random', to: 'parks#random'
  get '/paginate' => 'parks#paginate'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
