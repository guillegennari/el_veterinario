Rails.application.routes.draw do
  get 'home/index'
  #resources :clients
  resources :pet_histories

  resources :clients do
    resources :pets
  end

  #resources :pets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pets#index"
end
