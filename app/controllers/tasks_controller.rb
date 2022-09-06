class TasksController < ApplicationController
  before_action :set_list, only: %i[new create]
  before_action :set_task, only: %i[edit update destroy]

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.list = @list

    if @task.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to list_path(@task.list_id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy

    redirect_to list_path(@task.list_id), status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :location, :date, :concluded, :card_color)
  end
end
