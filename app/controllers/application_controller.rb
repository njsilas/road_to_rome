class ApplicationController < ActionController::Base
    include ApplicationHelper
    
    helper_method :current_user
   helper_method :logged_in?
   
    def current_user
    @user = (User.find_by(id: session[:user_id]) || User.new)
    end
    def logged_in?
        !current_user.nil?
    end
 
end
