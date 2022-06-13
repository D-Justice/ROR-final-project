class SessionsController < ApplicationController
  include BCrypt
    def create
        @user = User.find_by(email: params[:session][:email].downcase)
        if @user
          if @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            redirect_to '/home'
          end
        else
          redirect_to '/login'
        end


      end
       
      def delete
        session.delete :user_id
        redirect_to home_index_path
      end
end