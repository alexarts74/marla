Rails.application.routes.draw do
  devise_for :dogs
  root to: "humans#index"
  resources :humans, only: %i[show new create destroy] do
    resources :reservations, only: %i[new create]
  end
  resources :reservations, only: :destroy
  # resources :humans, only: :destroy
  get "/my-account", to: "dogs#my_account", as: "my-account"
end
