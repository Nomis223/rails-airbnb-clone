class GuitarsController < ApplicationController

  before_action :set_guitar, only:[:show]

  def index
    if params[:query].present?
      @guitars = Guitar.where("brand ILIKE ? AND address ILIKE ?", "%#{params[:brand]}%", "%#{params[:address]}%")
    else
      @guitars = Guitar.all
    end
    # authorize @guitars
  end

  def new
    @guitar = Guitar.new
  end

  def create
    @guitar = Guitar.new(guitar_params)
    @guitar.user = current_user
    if @guitar.save
      redirect_to guitar_path(@guitar)
    else
      render new
    end
  end

  def show
    authorize @guitar
  end

  private

  def set_guitar
    @guitar = Guitar.find(params[:id])
  end
end

def guitar_params
  params.require(:guitar).permit(:brand, :category, :description, :address, :price_per_day, :image)
end
