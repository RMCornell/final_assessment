class TasksController < ApplicationController
  before_filter :authorize

  def index
    @tasks = Task.all
  end

  def new

  end

  def create
    @task = Task.new(task_params)

    @task.tasklist_id = current_tasklist.id


    if @task.save
      redirect_to @task
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :status, :notes, :due_date, :start_date)
  end
end
