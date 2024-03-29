class ShiftsController < ApplicationController
  def index
    # logged_in = current_user
    # organization_id = current_user.organization_id
    shifts = Shift.all
    render json: shifts
  end

  def create
    organization = Organization.find_by(current_user.organization_id)
    shift = Shift.new(
      user_id = current_user.id,
      start = params[:start],
      finish = params[:finish],
      break_length = params[:break_length],
      organization_id = organization.id,
      employee_name = current_user.name
    )
    shift.save
    render json: shift.as_json
  end

  def get_username
    username = User.find_by(id: current_user.id)
    render json: username.as_json
  end
end
