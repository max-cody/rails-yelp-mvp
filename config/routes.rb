# frozen_string_literal: true

Rails.application.routes.draw do
  get 'restaurants/category'
  get 'restaurants/new'
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: %i[show destroy]

  # Defines the root path route ("/")
  # root "posts#index"
end
