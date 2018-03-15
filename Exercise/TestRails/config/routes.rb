Rails.application.routes.draw do
  get 'welcome/index'


  resources :articles

namespace :admin do
  resources :products
end
  root 'welcome#index'
end
