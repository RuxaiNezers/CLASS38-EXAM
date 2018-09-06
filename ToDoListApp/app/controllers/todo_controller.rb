class TodoController < ApplicationController
  
  def index
     @done = []
  	@Todos = Todo.all
    if user_signed_in?
      @Done = Completed.select(:user_id, :todo_id).where(:user_id => current_user, :done => true).all
      @Done.each do |done|
        @done << done.todo_id 
      end
    end
  end


  def todos_params
      params.require(:todo).permit(:title, :description, :image)
  end

end
