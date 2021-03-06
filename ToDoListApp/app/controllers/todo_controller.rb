class TodoController < ApplicationController
  
  def index
     @done = []
  	@Todos = Todo.all
    if user_signed_in?
      @Done = Completed.select(:user_id, :todo_id).where(:user_id => current_user, :done => true).all
      @Done.each do |done|
        @done << done.todo_id 
      end
      @completes = @done.length
      @total = Todo.all.count
    end

  end

  def show
    @done = []
    @others = []
    @Todo= Todo.find(params[:id])
    if user_signed_in?  
      @others = User.joins(:completeds).where(completeds: {todo_id: @Todo, done: true}).order('completeds.updated_at').offset(5)
       @Done = Completed.select(:user_id, :todo_id).where(:user_id => current_user, :done => true).all
      @Done.each do |done|
        @done << done.todo_id 
      end
      @completes = @done.length
      @total = Todo.all.count
      @Top5 = User.joins(:completeds).where(completeds: {todo_id: @Todo, done: true}).order('completeds.updated_at ').limit(5)
      

    end
  end

  def todos_params
      params.require(:todo).permit(:title, :description, :image)
  end

end
