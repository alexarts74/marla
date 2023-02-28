Rails.application.routes.draw do
  devise_for :dogs
  root to: "humans#index"
  resources :humans, only: %i[show new create] do
    resources :reservations, only: %i[new create]
  end
  resources :reservations, only: :destroy
  resources :humans, only: :destroy
end
