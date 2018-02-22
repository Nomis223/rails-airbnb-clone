class UsersController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  def show
    @user = User.find(params[:id])
    @bookings = Booking.where(user_id: current_user)
    @guitars = Guitar.where(user_id: current_user)
    authorize @user
  end
end
