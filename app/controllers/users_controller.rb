class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :update, :destroy]   

  def index
    @users = User.all
  end

  def edit 
  end   

  def show
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  private

  def set_user 
    @user = User.find(params[:id])
  end   

end
