Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :sessions, only: [:create]
  # resources :registrations, only: [:create]
  # get :logged_in, to: "sessions#logged_in"
  # delete :logout, to: "sessions#logout"
  #
  # get :search, to: "users#search"
  # delete :destroy, to: "users#destroy"
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
      get :logged_in, to: "sessions#logged_in"
      delete :logout, to: "sessions#logout"

      get :search, to: "users#search"
      delete :destroy, to: "users#destroy"
    end
  end

  # get '*path', to 'home#index', via: :all
  root to: "home#index"
end
