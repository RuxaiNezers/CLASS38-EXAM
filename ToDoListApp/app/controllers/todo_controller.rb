class TodoController < ApplicationController
  def index
  	@Todos = Todo.all
  end
end
