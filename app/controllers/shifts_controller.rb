class ShiftsController < ApplicationController
  def index
    logged_in = current_user
    organization_id = current_user.organization_id
    shifts = Shift.where(organization_id: organization_id)
    render json: shifts.as_json
  end

  def create
    organization = Organization.find_by(current_user.organization_id)
    shift = Shift.new(
      user_id = current_user.id,
      start = params[:start],
      finish = params[:finish],
      break_length = params[:break_length],
      organization_id = organization.id
    )
    shift.save
    render json: shift.as_json
  end

  def get_username
    puts "********************"
    puts current_user
    puts "********************"
    username = User.find_by(id: current_user.id)
    render json: username.as_json
  end
end
