class UsersController < ApplicationController
  def new
  end
  
  def create
    if params.require(:user).permit(:password) != params.require(:user).permit(:password_confirmation)
      raise "error"
    end


    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  
end
