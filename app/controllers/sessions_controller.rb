class SessionsController < ApplicationController
    def home

    end
    def new

    end
    def create
        user = User.find_by(email: params[:user][:email])
        user = user.try(:authenticate, params[:user][:password])
        if !!user
            session[:user_id] = user.id
            @user = user
            redirect_to controller: 'users', action: 'show'
        else
            render 'new'

        end
    end

   
end
