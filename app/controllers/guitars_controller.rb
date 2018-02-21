class GuitarsController < ApplicationController

  before_action :set_guitar, only:[:show]

  def index

    if params[:brand].present? && params[:address].present? && params[:starts_at].present? && params[:ends_at].present?
      guitars = policy_scope(Guitar).where("brand ILIKE ? AND address ILIKE ?", "%#{params[:brand]}%", "%#{params[:address]}%")

      user_ends_at = Date.parse(params[:ends_at])
      user_starts_at = Date.parse(params[:starts_at])
      @guitars = []

      guitars.each do |guitar|
        guitar.bookings.each do |booking|
          booking_starts_at = Date.parse(booking.starts_at)
          booking_ends_at = Date.parse(booking.ends_at)

          if user_starts_at > booking_starts_at && user_starts_at < booking_ends_at
            break
          elsif user_ends_at > booking_starts_at && user_ends_at < booking_ends_at
            break
          end
        end
        @guitars << guitar
      end

    else
      @guitars = policy_scope(Guitar).all
    end
    @markers = @guitars.map do |guitar|
      {
        lat: guitar.latitude,
        lng: guitar.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def new
    @guitar = Guitar.new
    authorize @guitar
  end

  def create
    @guitar = Guitar.new(guitar_params)
    authorize @guitar
    @guitar.user = current_user
    if @guitar.save
      redirect_to guitar_path(@guitar)
    else
      render new
    end
  end

  def show
    authorize @guitar
    @booking = Booking.new(user_id: current_user.id, guitar_id: @guitar.id)
  end

  private

  def set_guitar
    @guitar = Guitar.find(params[:id])
  end
end

def guitar_params
  params.require(:guitar).permit(:brand, :category, :description, :address, :price_per_day, :image)
end
