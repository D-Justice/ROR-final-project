class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
def current_user
end
 
def logged_in?
  !!current_user
end
 
def require_user
  if !logged_in?
    redirect_to login_path
  end
end




end
