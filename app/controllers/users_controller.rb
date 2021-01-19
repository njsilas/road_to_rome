class UsersController < ApplicationController
 def new
@user = User.new
 end
 def create
    
    if params[:email] == "" || params[:name] == "" || params[:password] == ""
        render 'new'
    else
       session[:name] = params[:name]
        redirect_to user_path(user)
    end

 end
end
