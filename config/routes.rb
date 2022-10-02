Rails.application.routes.draw do

  # Create User
  post "/users" => "users#create"

  # Change Password

  patch "/users/:id" => "users#update"

  post "/join_organization/" => "users#join_organization"
  post "/leave_organization/" => "users#leave_organization"

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
