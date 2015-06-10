class TasksController < ApplicationController
  respond_to do |format|
    format.html
    format.js
  end

  def index
    @new_task= Task.new
    @tasks= Task.all.sort_by{|t|t.due_date.to_s}
    
  end

  def create
    @new_task= Task.new(task_params)
    @new_task.save
    
  end

  def edit
    @task= Task.find(params[:id])
  end

  def update
    @task=Task.find(params[:id])
    @task.update_attributes(task_params)
    redirect_to :back
  end

  private 

  def task_params
    params.require(:task).permit(:description,:due_date)
  end

end