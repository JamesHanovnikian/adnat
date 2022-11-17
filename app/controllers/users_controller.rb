class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      organization_id: nil,
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.find_by(id: params[:id])
    user.password = params[:password]
    user.password_confirmation = params[:password_confirmation]
    render json: user.as_json
  end

  def join_organization
    new_organization_id = params[:organization_id]
    p "*************************"
    p current_user
    p "*************************"
    the_current_user = current_user
    the_current_user.organization_id = new_organization_id
    the_current_user.save
  end

  def leave_organization
    user = User.find_by(id: params[:user_id])
    user.organization_id = nil
    user.save
  end
end
