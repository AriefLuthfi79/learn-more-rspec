class CompletionsController < ApplicationController
  before_action :authenticate_user!

  def create
    todos.completed!
    redirect_to root_path
  end

  def destroy
    todos.incompleted!
    redirect_to root_path
  end
  
  private

  def todos
    current_user.todos.find(params[:todo_id])
  end
end
