class ShiftsController < ApplicationController
  def index
    shifts = Shift.all
    # Each loop to go through all shifts
    # On each iteration:
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
end
