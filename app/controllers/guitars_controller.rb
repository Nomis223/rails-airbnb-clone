class GuitarsController < ApplicationController

  before_action :set_guitar, only:[:show]

  def index
    @guitars = Guitar.all
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
