Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"

  resources :users, only: %i[new create login] do
    resources :plants, only: %i[index show new create edit update]
  end

  resources :plants, only: [:destroy]
end
