Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get 'services/index'

  devise_for :users

  root "pages#show"




  resource :account, controller: "account"  do
    resources :profil, only: [:show, :index]

    resources :cars, only: [:index, :show]
    resources :orders, only: [:index, :show, :edit, :update, :destroy]
  end


  resources :services, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :cars, only: [:new, :create, :edit, :update, :destroy]
  resources :orders, only: [:new, :create]
  resources :profil, only: [:create, :new, :update, :destroy]

end
