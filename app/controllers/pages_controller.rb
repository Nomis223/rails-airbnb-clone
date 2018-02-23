class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home   
    flash[:notice] = "Your guitar has been booked!" if params[:query] == "Booked"
  end
end
