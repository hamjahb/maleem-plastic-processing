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
  get 'printings/show', to: 'printings#show'
  get 'printings/edit', to: 'printings#edit'
  patch 'printings/:id', to: 'printings#update'
  
  get 'cuttings', to: 'cuttings#index'
  get 'cuttings/view', to: 'cuttings#view'
  get 'cuttings/edit', to: 'cuttings#edit'
  patch 'cuttings/:id', to: 'cuttings#update'

  get 'deliveries', to: 'deliveries#index'
  get 'deliveries/view', to: 'deliveries#view'
  get 'deliveries/edit', to: 'deliveries#edit'
  patch 'deliveries/:id', to: 'deliveries#update'
  

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
