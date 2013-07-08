Fandango::Application.routes.draw do

  resources :sessions, :only => [:new, :create]

  match "signup" => "users#new", :as => "signup"
  match "logout" => "sessions#destroy", :as => "logout"
  match "login" => "sessions#new", :as => "login"

  resources :users, :only => [:new, :create]

  resources :showings
  resources :seats
  resources :movies
  resources :theaters

  root :to => 'movies#index'

end
