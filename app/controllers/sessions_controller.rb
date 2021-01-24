class SessionsController < ApplicationController
    def home

    end
    def new

    end
    def create
        @user = User.find_by(email: log_in_params["email"])
        if @user.present?
          if @user.authenticate(log_in_params["password"])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
          else
            flash[:message] = "There was an error signing in."
            render :new
          end
        else 
            redirect_to '/signup'
            flash[:message] = "You don't have an account!"
        end
      end
    def destroy
        session.delete :user_id
    
        redirect_to '/'
      end
      def omniauth
        user = User.from_omniauth(request.env['omniauth.auth'])
       
        if user.valid?
          session[:user_id] = user.id
          redirect_to user_path(user)
        else
          redirect_to '/login', alert: "No bueno, uno mas time bud"
        end
      end
    
end
