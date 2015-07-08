class TasksController < ApplicationController
  before_action :require_user, except:[:index]
  before_action :set_task, only: [:update,:edit,:destroy]

  respond_to do |format|
    format.html
    format.js
  end

  def index
    if logged_in?
      @new_task= current_user.tasks.new
      @tasks= current_user.tasks.all.sort_by{|t|t.due_date.to_s}
    else @new
    end
  end

  def create
    @new_task= current_user.tasks.new(task_params)
    @new_task.save
  end
    

  def edit
  end

  def update
    @tasks= current_user.tasks.all
    @task.update_attributes(task_params)
    redirect_to :back
  end

  def destroy
    @task.destroy
  end
    

  private 
  
  def set_task
    @task=Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:description,:due_date,:priority,:due_time,:extra_notes)
  end

end