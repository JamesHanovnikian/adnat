class ShiftsController < ApplicationController
  def index
    if current_user
      the_users_id = current_user.id
      shifts = Shift.where(user_id: the_users_id)
      # Each loop to go through all shifts
      # On each iteration:
      render json: shifts.as_json
    else
      render json: { message: "Your are not logged in." }
    end
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
