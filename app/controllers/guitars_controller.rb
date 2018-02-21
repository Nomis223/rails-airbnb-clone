class GuitarsController < ApplicationController

  before_action :set_guitar, only:[:show]

  def index
    if params[:query].present?
      @guitars = policy_scope(Guitar).where("brand ILIKE ? AND address ILIKE ?", "%#{params[:brand]}%", "%#{params[:address]}%")
    else
      @guitars = policy_scope(Guitar).all
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
  end

  private

  def set_guitar
    @guitar = Guitar.find(params[:id])
  end
end

def guitar_params
  params.require(:guitar).permit(:brand, :category, :description, :address, :price_per_day, :image)
end
