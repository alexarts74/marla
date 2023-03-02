Rails.application.routes.draw do
  devise_for :dogs
  root to: "humans#index"
  resources :humans, only: %i[show new create destroy] do
    resources :reservations, only: %i[new create index]
  end
  resources :reservations, only: %i[destroy show]

  # resources :humans, only: :destroy
  get "/my-account", to: "dogs#my_account", as: "my-account"
end
