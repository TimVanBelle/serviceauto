Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get 'services/index'

  devise_for :users

  root "pages#show"




  resource :account, controller: "account"  do
  resources :profil, only: [:edit, :create, :new, :update, :delete]
  resources :cars, only: [:index, :show, :edit, :update, :delete]
  resources :orders, only: [:index, :show, :edit, :create, :new, :update, :delete]
  end
  resources :services, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :cars, only: [:new, :create]
  end
