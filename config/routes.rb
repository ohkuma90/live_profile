Rails.application.routes.draw do
  root "cards#index"
  devise_for :users
end
