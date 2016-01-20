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
    @tasks = Task.all
  end

  def update
    @task = Task.find(params[:id])

    if @task.update_attributes(:status => params[:complete])
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :status, :notes, :due_date, :start_date)
  end
end
