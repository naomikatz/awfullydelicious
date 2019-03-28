Rails.application.routes.draw do
  resources :locations
  resources :spots
  resources :favorites
  resources :categories
  resources :foods
  resources :reviews, except: [:index, :create]
  resources :foodies, only: [:show, :new, :create, :destroy]

  get "/foods/:id/newreview", to:"reviews#new", :as => "new_food_review"
  get "/foods/:id/reviews", to:"reviews#index", :as => "food_reviews"
  post "/foods/:id", to:"reviews#create"


  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  # get "reviews/:id", to:"reviews#show", :as => "food_review"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
