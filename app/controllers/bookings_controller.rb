class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.guitar = Guitar.find(params[:guitar_id])
    @booking.user = current_user
    authorize @booking
    @booking.save
    redirect_to root_path   
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :fixed_price)
  end
end

