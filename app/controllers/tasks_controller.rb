class TasksController < ApplicationController
    def list
      @tasks = Task.all
    end

    def show
     @task = Task.find(params[:id])
    end

    def new
      @task = Task.new
    end 
    
    def create
     @task = Task.new(task_params)
     @task.save 
     redirect_to tasks_path(@task)
    end

    def edit
     @task = Task.find(params[:id])
    end

    def update
     @task = Task.find(params[:id])
     @task.update(params[:task])
    end

    private

    def task_params
      params.require(:task).permit(:title, :details, :completed)
    end
end
