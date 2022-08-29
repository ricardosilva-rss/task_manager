class TasksController < ApplicationController
  before_action :set_list, only: %i[new create]

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

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :location, :date, :concluded)
  end
end
