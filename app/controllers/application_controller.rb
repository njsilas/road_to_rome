class ApplicationController < ActionController::Base
    include ApplicationHelper
    def route_not_found
        render file: Rails.public_path.join('404.html'), status: :not_found, layout: false
      end
    helper_method :current_user
   helper_method :logged_in?
   helper_method :redirect_if_not_logged_in
   def redirect_if_not_logged_in
    if !logged_in?
        redirect_to '/'
       end
    end
end
