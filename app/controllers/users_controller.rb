class UsersController < ApplicationController
 def new
@user = User.new
 end
 def create
    
    if params[:email] == "" || params[:name] == "" || params[:password] == ""
        render 'new'
    else
        @user = User.create(user_params)
        
        session[:name] = params[:name]
        redirect_to user_path(@user)
    end
    def show
        @user = User.find_by_id(params[:id])
    end
 end
 private
 def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
