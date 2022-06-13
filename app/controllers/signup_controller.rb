class SignupController < ApplicationController
    attr_accessor :password, :password_confirmation
    def index
        $newUser = nil
        redirect_to "/signup/new"
    end
    def new
        $newUser
    end
 
    def create
        $newUser = User.create(user_params)
        
        if $newUser.valid?
            $newUser.save
            redirect_to home_index_path
        else
            redirect_to '/signup/new'
        end
    end
    private

    def user_params
        params.require(:user).permit(:userName, :firstName, :lastName, :email, :password, :password_confirmation)
    end
end