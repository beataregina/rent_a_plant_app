Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "pages#home"
  get "dashboard", to: "dashboard#show"
  resources :plants do
    resources :bookings, only: %i[new create show index]
  end
  resources :bookings, only: :destroy
end
