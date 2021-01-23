class UsersController < ApplicationController
   def new
    @user = User.new
   end
 def create
    @user = User.create(user_params)
        @user.doublecheck
 end
  def show
    @user = User.find_by_id(params[:id])
  end
 
 private
 def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
