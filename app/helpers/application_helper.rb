module ApplicationHelper
    def show_errors(object, field_name)
        if object.errors.any?
          if !object.errors.messages[field_name].blank?
            object.errors.messages[field_name].join(", ")
          end
        end
      end 

 def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end
    def logged_in?
        !!current_user
    end
    def redirect_if_not_logged_in
        if !logged_in?
            redirect_to '/'
        end
    end
end
 
