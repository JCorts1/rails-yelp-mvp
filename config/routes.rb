Rails.application.routes.draw do
  get 'restaurants/reviews'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :reviews, only: [:destroy]
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"
  get "/restaurants/:id", to: "restaurants#show"
  post "restaurants", to: "restaurants#create"
  # Defines the root path route ("/")
  # root "posts#index"
end
