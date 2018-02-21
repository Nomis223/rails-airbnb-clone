class UsersController < ApplicationController
  before_action :set_user, only:[:show]

  def new
  end

  def create
  end

  def destroy
  end

  def show
    authorize @user
  end

  private

  def set_user
  @user = User.find(params[:id])  end
end
