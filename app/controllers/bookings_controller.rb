class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    if current_user.nil?
      @booking = Booking.new
      authorize @booking
      puts "WHAAAAT IS in the params"
      p params
      p cookies[:starts_at] = params[:booking]
      cookies[:ends_at] = params[:booking]
      redirect_to new_user_session_path
    else
      @booking = Booking.new(booking_params)
      @booking.guitar = Guitar.find(params[:guitar_id])
      @booking.user = current_user
      authorize @booking
      @booking.save
      redirect_to confirmation_guitar_booking_path(@booking.guitar, @booking)  
    end  
  end

  def confirmation
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :fixed_price)
  end
end

