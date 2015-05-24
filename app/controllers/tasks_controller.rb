class TasksController < ApplicationController

  def index
     @task= Task.new
     respond_to do |format|
      format.js
      format.html
    end
  end

  def create
    @task= Task.new(task_params)
    binding.pry
    @task.save
    redirect_to :back

  end

  private 

  def task_params
    params.require(:task).permit(:description,:due_date)
  end

end