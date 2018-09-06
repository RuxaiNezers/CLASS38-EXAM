class CompletedsController < ApplicationController
  before_action :authenticate_user!


  def create
 
  	@todo = Todo.find(params[:todo_id])
  	@user = current_user
  	@n = Completed.where(:user_id => @user, :todo_id => @todo)
  	if @n.empty?
		@completed = Completed.new(todo: @todo, user: current_user, done: true)
	  	if @completed.save
	  		redirect_to root_path, notice:'To-Do Completed'
	  	else
	  		redirect_to root_path, alert:"Can't save, please retry" 
	  	end
  	else
  		if Completed.where(:user_id => @user, :todo_id => @todo).update_all(:done => true)
  			redirect_to root_path, notice:'To-Do Completed'
  		else
  			redirect_to root_path, alert:"Can't save, please retry"	
  		end
	  	
	end	
  end

  def update
  	@todo = Todo.find(params[:todo_id])
  	@user = current_user
  	if Completed.where(:user_id => @user, :todo_id => @todo).update_all(:done => false)
  		redirect_to root_path,notice:'To-Do Fixed'
  	else
  		redirect_to root_path, alert:"Can't save, please retry"	
  	end
  end



  def completed_params
  	params.require(:completed).permit(:user_id, :todo_id, :done => false)
  end
end
