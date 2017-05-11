class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy, :complete]

  def index
    @todos = Todo.all
    json_response(@todos)
  end

  def create
    @todo = Todo.create!(todo_params)
    json_response(@todo, :created)
  end

  def show
    json_response(@todo)
  end

  def update    # PUT
    @todo.update(todo_params)
    head :no_content
  end

  def complete
    @todo.update_attribute(:completed, Time.now)
    head :no_content
  end

  def destroy   #DELETE
   @todo.destroy
   head :no_content
  end

  private

    def todo_params
      params.permit(:task, :details, :time_estimate, :status, :brainjuice_id, :user_id, :container_id, :completed)
    end

    def set_todo
      @todo = Todo.find(params[:id])
    end

end
