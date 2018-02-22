class GuitarsController < ApplicationController

  before_action :set_guitar, only:[:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @guitars = []
    got_brand = params[:brand].present?
    got_address = params[:address].present?
    got_start = params[:starts_at].present?
    got_end = params[:ends_at].present?

    if got_brand && got_address && got_start && got_end
      c = Date.parse(params[:starts_at])
      d = Date.parse(params[:ends_at])

      general_guitars = policy_scope(Guitar).where("brand ILIKE ? AND address ILIKE ?", "%#{params[:brand]}%", "%#{params[:address]}%")
      general_guitars.each do |guitar|
        if guitar.bookings.count == 0
          @guitars << guitar
        else
          guitar.bookings.each do |booking|
            a = Date.parse(booking.starts_at)
            b = Date.parse(booking.ends_at)
            if (c < a && d < a) || (b < c && d < c)
              @guitars << guitar
            else
              next
            end
          end
        end
        @guitars.uniq!
      end

    elsif got_brand && !got_address && got_start && got_end
      c = Date.parse(params[:starts_at])
      d = Date.parse(params[:ends_at])

      general_guitars = policy_scope(Guitar).where("brand ILIKE ?", "%#{params[:brand]}%")
      general_guitars.each do |guitar|
        if guitar.bookings.count == 0
          @guitars << guitar
        else
          guitar.bookings.each do |booking|
            a = Date.parse(booking.starts_at)
            b = Date.parse(booking.ends_at)
            if (c < a && d < a) || (b < c && d < c)
              @guitars << guitar
            else
              next
            end
          end
        end
        @guitars.uniq!
      end

    elsif !got_brand && got_address && got_start && got_end
      c = Date.parse(params[:starts_at])
      d = Date.parse(params[:ends_at])

      general_guitars = policy_scope(Guitar).where("address ILIKE ?", "%#{params[:address]}%")
      general_guitars.each do |guitar|
        if guitar.bookings.count == 0
          @guitars << guitar
        else
          guitar.bookings.each do |booking|
            a = Date.parse(booking.starts_at)
            b = Date.parse(booking.ends_at)
            if (c < a && d < a) || (b < c && d < c)
              @guitars << guitar
            else
              next
            end
          end
        end
        @guitars.uniq!
      end

    elsif got_brand && got_address && !got_start && !got_end
      @guitars = policy_scope(Guitar).where("brand ILIKE ? AND address ILIKE ?", "%#{params[:brand]}%", "%#{params[:address]}%")

    elsif got_brand && !got_address && !got_start && !got_end
      @guitars = policy_scope(Guitar).where("brand ILIKE ?", "%#{params[:brand]}%")

    elsif !got_brand && got_address && !got_start && !got_end
      @guitars = policy_scope(Guitar).where("address ILIKE ?", "%#{params[:address]}%")

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
      render :new
    end
  end

  def show
    authorize @guitar
      puts " ================= "
      p cookies[:booking]
      p @booking
    if cookies[:booking].present?
      @booking = Booking.new #(starts_at: Date.parse(cookies[:booking]["booking"]['starts_at']))
      @booking.guitar = @guitar
      cookies[:booking] = nil
    else
      @booking = Booking.new
      @booking.guitar = @guitar
    end
  end

  private

  def set_guitar
    @guitar = Guitar.find(params[:id])
  end
end

def guitar_params
  params.require(:guitar).permit(:brand, :category, :description, :address, :price_per_day, :image)
end
