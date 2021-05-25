class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private
  
  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
  

end
