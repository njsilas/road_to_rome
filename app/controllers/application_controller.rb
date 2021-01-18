class ApplicationController < ActionController::Base
    def current_user
    @user = (User.find_by(id: session[:user_id]) || User.new)
    end
    def logged_in?
        current_user.id != nil
    end
end
