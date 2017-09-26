class UsersController < ApplicationController
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
      #session[:user_id] = @user.id
    else
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
