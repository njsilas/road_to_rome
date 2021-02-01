class SessionsController < ApplicationController
    def home

    end
    def new

    end
    def create
        @user = User.find_by(email: params["email"])
        if @user.present?
          if @user.authenticate(params["password"])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
          else
           
            render '/'
          end
        else 
            redirect_to '/'
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
