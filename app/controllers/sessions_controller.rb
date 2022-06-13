class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:session][:email].downcase, password: params[:session][:password])
        if user 
          session[:user_id] = user.id
          redirect_to home_index_path
        else
          render 'new'
        end
      end
       
      def delete
        session.delete :user_id
        redirect_to home_index_path
      end
end