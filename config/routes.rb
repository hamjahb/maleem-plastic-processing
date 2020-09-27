Rails.application.routes.draw do
  resources :rolls
  resources :orders
  get 'welcome/index'
  get 'films', to: 'films#index'

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
