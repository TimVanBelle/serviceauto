Rails.application.routes.draw do
  devise_for :users

  root "pages#index"

  resource :account, controller: "account"  do
    resources :profil, only: [:show, :edit, :create, :new, :update, :delete]
  end


end
