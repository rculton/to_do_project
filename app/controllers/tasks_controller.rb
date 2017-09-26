class TasksController < ApplicationController
  def index
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save(task_params)
      redirect_to task_path(@task)
    else
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
    params.require(:task).permit(:body, :details, :list_id, :user_id)
  end
end
