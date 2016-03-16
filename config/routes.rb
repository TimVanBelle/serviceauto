Rails.application.routes.draw do
  devise_for :users

  root "pages#show"

  resource :account, controller: "account"  do
    resources :profil, only: [:edit, :create, :new, :update, :delete]
    resources :cars, only: [:index, :show, :edit, :update, :delete]
    resources :orders, only: [:index, :show, :edit, :create, :new, :update, :delete]
  end

  resources :cars, only: [:new, :create]

end
