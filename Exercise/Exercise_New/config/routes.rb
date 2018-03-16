Rails.application.routes.draw do
  get 'home/index'

  resources :albums do
    resources :pictures
  end

  resources :users
  root 'home#index'
end
