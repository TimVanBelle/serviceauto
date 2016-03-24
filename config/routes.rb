Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "pages#show"
  resources :services, only: [:index]

  resource :cart, only: [:show] do
    resources :cart_items, only: [:create, :destroy]
  end

  resource :order, only: [:create, :edit, :update] do
    resources :cars, only: [:new, :create]
    resource :payments, only: [:new, :create]
  end

  devise_for :users
  resource :account, only: [:show]

  resources :cars, only: [:new, :create, :edit, :update, :destroy]


  # resources :order_items, only: [:create, :update, :destroy]
  #
  # get 'services/index'
  #
  #
  #
  # resource :account, controller: "account"  do
  #   resources :profil, only: [:show, :index]
  #   resources :cars, only: [:index, :show]
  #   resources :orders, only: [:index, :show, :edit, :update, :destroy] do
  #
  #   end
  # end
  #
  # resources :order_items, only: [:create, :update, :destroy]
  # resources :orders, only: [:new, :create, :update]
  # resources :profil, only: [:create, :new, :update, :destroy]

end
