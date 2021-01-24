class ApplicationController < ActionController::Base
    include ApplicationHelper
    
    helper_method :current_user
   helper_method :logged_in?
   helper_method :redirect_if_not_logged_in
   def redirect_if_not_logged_in
    if !logged_in?
        redirect_to '/'
       end
    end
end
