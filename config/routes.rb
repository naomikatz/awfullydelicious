Rails.application.routes.draw do
  resources :locations
  resources :spots
  resources :favorites
  resources :categories
  resources :foods
  resources :reviews, except: [:index, :create]
  resources :foodies

  get "/foods/:id/newreview", to:"reviews#newreview", :as => "new_food_review"
  get "/foods/:id/reviews", to:"reviews#index", :as => "food_reviews"
  post "/foods/:id/reviews", to:"reviews#create"

  # get "reviews/:id", to:"reviews#show", :as => "food_review"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
