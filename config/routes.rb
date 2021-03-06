# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  
  root to: "main#index"
  
  get "/about", to: "about#index"

  get "/password", to: "passwords#edit", as: "edit_password"
  patch "/password", to: "passwords#update"

  get "/password/reset", to: "password_resets#new"
  get "/password/reset", to: "password_resets#create"
  
  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"

  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"

  delete "/logout",  to: "sessions#destroy"


end