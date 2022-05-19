module ApplicationHelper
    def isLoggedIn()
        begin
            @current_user ||= User.find(session[:user_id]) if session[:user_id]
            return !!@current_user
          rescue
            session.delete(:user_id)
          end
          
    end
end
