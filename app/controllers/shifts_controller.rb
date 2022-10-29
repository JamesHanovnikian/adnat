class ShiftsController < ApplicationController
  def index
    logged_in = current_user
    shifts = Shift.where(user_id: 1)
    render json: shifts.as_json
  end

  def create
    shift = Shift.new(
      user_id = current_user.id,
      start = params[:start],
      finish = params[:finish],
      break_length = params[:break_length]
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
