Rails.application.routes.draw do
  get 'home/index'

  # resources :albums do
  #   resources :pictures
  # end

  # resources :users


  # shallow do
  resources :users, shallow: true do
    resources :albums do
      resources :pictures
    end
  end

  # end

  root 'home#index'
end
