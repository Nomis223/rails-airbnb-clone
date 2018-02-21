class BookingsController < ApplicationController

  def create
    @booking = Booking.new()
    @booking.guitar = Guitar.find(params[:guitar_id])
    @booking.user = current_user
    authorize @booking
    @booking.save
    redirect_to root_path   
  end
end

