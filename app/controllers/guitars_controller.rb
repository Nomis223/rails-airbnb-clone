class GuitarsController < ApplicationController
  def index
    if params[:query].present?
      @guitars = Guitar.where("brand ILIKE ? AND address ILIKE ?", "%#{params[:brand]}%", "%#{params[:address]}%")
    else
      @guitars = Guitar.all
    end
  end

  def show
  end
end
