class TodoController < ApplicationController
  
  def index
  	@Todos = Todo.all
  end

  def new
  	@todo = Todo.new
  end
  def create
  	@todo = Todo.new(todos_params)
  	@todo.save
    redirect_to todo_path
  end

  def completed

  end
  
     def todos_params
      params.require(:todo).permit(:title, :description, :image)
    end

end
