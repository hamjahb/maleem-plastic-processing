Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # resources :orders
  # resources :rolls

  resources :orders do 
    resources :rolls, only: [:index, :new, :create]
  end

  resources :rolls, only: [:index, :show, :edit, :update, :destroy]

  get 'welcome/index'
  get 'films', to: 'films#index'

  get 'printings', to: 'printings#index'
  get 'printings/show'
  get 'printings/edit'
  

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
