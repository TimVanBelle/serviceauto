Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :order_items, only: [:create, :update, :destroy]
  resource :carts, only: [:show, :update, :edit]

  get 'services/index'

  devise_for :users

  root "pages#show"

  resource :account, controller: "account"  do
    resources :profil, only: [:show, :index]
    resources :cars, only: [:index, :show]
    resources :orders, only: [:index, :show, :edit, :update, :destroy]
  end

  resources :services, only: [:index]
  resources :order_items, only: [:create, :update, :destroy]
  resources :cars, only: [:new, :create, :edit, :update, :destroy]
  resources :orders, only: [:new, :create, :update]
  resources :profil, only: [:create, :new, :update, :destroy]

end
