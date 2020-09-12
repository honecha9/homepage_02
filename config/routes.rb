Rails.application.routes.draw do
  root "items#index"
  resources :shop, only: [:index, :new]
  resources :cases, only: [:index, :new, :create]

end
