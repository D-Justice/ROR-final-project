class SignupController < ApplicationController
    
    def index
        $newUser = nil
        redirect_to "/signup/new"
    end
    def new
        $newUser
    end
    
    def create
        $newUser = User.create(
            userName: params[:user][:userName], 
            firstName: params[:user][:firstName], 
            lastName: params[:user][:lastName], 
            email: params[:user][:email], 
            password: params[:user][:password])
        
        if $newUser.valid?
            $newUser.save
            redirect_to home_index_path
        else
            redirect_to '/signup/new'
        end
    end
end