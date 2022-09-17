class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
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
    user = User.find_by(id: params[:user_id])
    organization_id = params[:organization_id]
    user.organization_id = organization_id
    user.save
  end

  # def leave_organization
  #   user.organization_id = nil
  # end
end
