class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :checkbox]
  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path(@task)
  end

  def edit; end

  def update
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  def checkbox
    # change to completed to true
    if @task.completed == false
      @task.completed = true
      @task.save
    else
      @task.completed = false
      @task.save
    end

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
