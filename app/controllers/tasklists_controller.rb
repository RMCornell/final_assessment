class TasklistsController < ApplicationController
  def new

  end

  def create
    @tasklist = Tasklist.new(tasklist_params)

    if @tasklist.save
      redirect_to @tasklist
    else
      redirect_to '/tasklists/new'
    end
  end

  def show
    @tasklist = Tasklist.find(params[:id])
  end

  private

  def tasklist_params
    params.require(:tasklist).permit(:title, :description)
  end

end
