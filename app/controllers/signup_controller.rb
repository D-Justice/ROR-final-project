class SignupController < ApplicationController
    def index
        redirect_to "/signup/new"
    end

    def create
        @newUser = User.new
        @newUser.userName = params[:user][:userName]
        @newUser.firstName = params[:user][:firstName]
        @newUser.lastName = params[:user][:lastName]
        @newUser.email = params[:user][:email]
        @newUser.password = params[:user][:password]
        @newUser.save
        redirect_to home_index_path
    end
end