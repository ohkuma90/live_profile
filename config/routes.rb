Rails.application.routes.draw do
  root "users#show"
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  resources :users, only: :show
  resources :cards, only: [:new, :create]
end
