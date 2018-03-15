Rails.application.routes.draw do
  get 'home/index'

  resources :albums

  root 'home#index'
end
