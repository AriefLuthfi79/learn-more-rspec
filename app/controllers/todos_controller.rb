class TodosController < ApplicationController
  before_action :authenticate_user!

  def index
    @todos = current_user.todos
  end

  def new
    @todo = current_user.todos.new
  end

  def create
    current_user.todos.create(todo_params)
    redirect_to todos_path
  end

  def destroy
    todos.destroy
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

  def todos
    current_user.todos.find(params[:id])
  end
end
