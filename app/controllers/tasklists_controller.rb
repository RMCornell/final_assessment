class TasklistsController < ApplicationController
  before_filter :authorize

  def index
    @tasklists = Tasklist.all
  end

  def new

  end

  def create
    @tasklist = Tasklist.new(tasklist_params)
    @tasklist.user_id = current_user.id


    if @tasklist.save
      redirect_to @tasklist
    else
      redirect_to '/tasklists/new'
    end
  end

  def show
    @tasklist = Tasklist.find(params[:id])
  end

  def edit
    @tasklist = Tasklist.find(params[:id])
  end

  def update
    @tasklist = Tasklist.find(params[:id])
    @tasklist.update(tasklist_params)

    redirect_to tasklist_path(@tasklist)
  end

  def destroy

    @tasklist = Tasklist.destroy(params[:id])

    redirect_to tasklists_path
  end





  private

  def tasklist_params
    params.require(:tasklist).permit(:title, :description)
  end

end
