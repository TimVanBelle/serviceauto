Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root "pages#index"

  resources :customers, only: [:show] do
    resources :card, only: [:new, :create, :show]
    resources :orders, only: [:show]
  end
end
