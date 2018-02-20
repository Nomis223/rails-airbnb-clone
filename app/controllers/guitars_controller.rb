class GuitarsController < ApplicationController

  before_action :set_guitar, only:[:show]

  def index
    if params[:query].present?
      @guitars = Guitar.where("brand ILIKE ? AND address ILIKE ?", "%#{params[:brand]}%", "%#{params[:address]}%")
    else
      @guitars = Guitar.all
    end
    authorize @guitars
  end

  def show
    authorize @guitar
  end

  private

  def set_guitar
    @guitar = Guitar.find(params[:id])
  end
end
