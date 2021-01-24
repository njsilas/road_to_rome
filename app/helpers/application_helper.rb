module ApplicationHelper
    def show_errors(object, field_name)
        if object.errors.any?
          if !object.errors.messages[field_name].blank?
            object.errors.messages[field_name].join(", ")
          end
        end
      end 

 def current_user
    @user = (User.find_by(id: session[:user_id]) || User.new)
    end
    def logged_in?
        !current_user.nil?
    end
end
 
