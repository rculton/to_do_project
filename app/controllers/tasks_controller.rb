class TasksController < ApplicationController

  before_action :require_permission, only: [:edit, :destroy, :show]
  before_action :authorize, only: [:new]
  
  def require_permission
    if current_user != Task.find(params[:id]).user
      redirect_to root_path
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    @user = current_user
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    if @task.save
      redirect_to list_path(@task.list_id)
    else
      flash[:danger] = "Incorrect or missing information"
      redirect_to new_task_path
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else 
      flash[:danger] = "Incorrect or missing information"
      redirect_to edit_task_path(@task)

    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      redirect_to list_path(@task.list_id)
    else
      redirect_to task_path(@task)
    end
  end

  private
  def task_params
    params.require(:task).permit(:body, :details, :list_id, :complete)
  end
end
