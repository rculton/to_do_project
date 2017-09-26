class UsersController < ApplicationController
  before_action :require_permission, only: [:edit, :delete]
  before_action :authorize, only: [:show]
  
  def require_permission
    if current_user != User.find(params[:id])
      redirect_to root_path
    end
  end

  def index
  end

  def show
    @user = User.find(params[:id])
    @lists = @user.lists
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
      session[:user_id] = @user.id
    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to root_path
      session[:user_id] = @user.id

    else 
      redirect_to user_path(@user)
    end

  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
