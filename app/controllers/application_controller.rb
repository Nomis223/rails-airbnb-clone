class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  include Pundit


  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?


  private

  def after_sign_in_path_for(resource)
    # Save booking if there is a temporary booking in the session
    if session[:booking].present?
      # String bookings is there to filter the params cause its not just bookings in there. 
      # @booking = current_user.bookings.new(session[:booking]["booking"])
      @guitar = Guitar.find(session[:booking]["guitar_id"])
      # redirect_to guitar_path(@guitar)
      # @booking.guitar = @guitar
      # render 'guitars/show'
    else
      # If there is no temporary booking go to default devise behavior
      super
    end
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
