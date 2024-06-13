Rails.application.routes.draw do
  devise_for :users
  resources :music_records
  resources :orders, only: [:index, :create]
  resources :rentals, only: [:index, :create]
  root "music_records#index"
end
