Rails.application.routes.draw do

  # Create User
  post "/users" => "users#create"

  # Change Password

  patch "/users/:id" => "users#update"

  # Log in

  post "/sessions" => "sessions#create"

  # Organizations

  get "/organizations" => "organizations#index"
  post "/organizations" => "organizations#create"
  get "/organizations/:id" => "organizations#show"
  patch "/organizations/:id" => "organizations#update"
  delete "/organizations/:id" => "organizations#destroy"

  # Shifts

  get "/shifts" => "shifts#index"
  post "/shifts" => "shifts#create"
end
