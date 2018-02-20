class GuitarsController < ApplicationController

  before_action :set_guitar, only:[:show]

  def index
    if params[:query].present?
      @guitars = policy_scope(Guitar).where("brand ILIKE ? AND address ILIKE ?", "%#{params[:brand]}%", "%#{params[:address]}%")
    else
      @guitars = policy_scope(Guitar).all
    end
  end

  # def new
  #   @guitar = Guitar.new
  # end

  # def create
    
  # end

  def show
    authorize @guitar
  end

  private

  def set_guitar
    @guitar = Guitar.find(params[:id])
  end
end
