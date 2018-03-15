Rails.application.routes.draw do
  get 'home/index'

  resources :albums do
    resources :pictures
  end

  root 'home#index'
end
