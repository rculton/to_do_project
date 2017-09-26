class ListsController < ApplicationController

  before_action :require_permission
  
  def require_permission
    if current_user != List.find(params[:id]).user
      redirect_to root_path
    end
  end

  

  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save(list_params)
      redirect_to list_path(@list)
    else
      redirect_to new_list_path
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      redirect_to edit_list_path(@list)
    end
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      redirect_to user_path(@list.user_id)
    else
      redirect_to list_path(@list)
    end
  end

  private
  def list_params
    params.require(:list).permit(:title, :user_id)
  end
end
