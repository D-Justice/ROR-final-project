class SessionsController < ApplicationController
    def create
        user_info = request.env['omniauth.auth']
        user = User.find_by(email: params[:session][:email].downcase, password: params[:session][:password])
        if user 
          session[:user_id] = user.id
          flash[:notice] = "Logged in successfully."
          redirect_to home_index_path
        else
          flash.now[:alert] = "There was something wrong with your login details."
          render 'new'
        end
      end
       
      def delete
        session.delete :user_id
        flash[:notice] = "You have been logged out."
        redirect_to home_index_path
      end
    
end