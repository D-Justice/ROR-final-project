class UserController < ApplicationController
    def index
        @user = User.find_by(id: session[:user_id])
    end
    def show
        @showPost = Post.find(params[:id])
    end
end