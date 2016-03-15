Rails.application.routes.draw do
  devise_for :users

  root "pages#show"

  resource :account, controller: "account"  do
    resources :profil, only: [:show, :edit, :create, :new, :update, :delete]
    resources :car, only: [:show, :edit, :create, :new, :update, :delete]
    resources :order, only: [:show, :edit, :create, :new, :update, :delete]
  end


end
