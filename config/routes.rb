Rails.application.routes.draw do
  devise_for :users

  root "pages#show"

  resource :account, controller: "account"  do
    resources :profil, only: [:show, :index]
    resources :cars, only: [:index, :show]
    resources :orders, only: [:index, :show, :edit, :update, :destroy]
  end

  resources :cars, only: [:new, :create, :edit, :update, :destroy]

  resources :orders, only: [:new, :create]

  resources :profil, only: [:create, :new, :update, :destroy]

end
