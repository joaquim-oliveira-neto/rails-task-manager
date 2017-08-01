class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new

  end

  def create
    task = Task.new(params.require(:task).permit(:description, :due_date))
    task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params.require(:task).permit(:description, :due_date))
    redirect_to task_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def restaurant_params
    params.require(:task).permit(:description, :due_date)
    redirect_to tasks_path
  end




end
