class ApplicationController < ActionController::Base
   helper_method :current_user
   helper_method :logged_in?
    helper_method :transit
    def current_user
    @user = (User.find_by(id: session[:user_id]) || User.new)
    end
    def logged_in?
        !current_user.nil?
    end
    def transit
        @trip = Flight.find_by_id(params[:flight_id]).destination.id
    end
end
