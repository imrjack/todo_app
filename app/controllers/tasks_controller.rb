class TasksController < ApplicationController
  before_action :set_task, only: [:update,:edit,:destroy]

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
  end

  def update
    @task.update_attributes(task_params)
  end

  def destroy
    @task.destroy
  end
    

  private 
  
  def set_task
    @task=Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:description,:due_date)
  end

end