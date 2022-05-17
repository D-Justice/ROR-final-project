class UserController < ApplicationController
    def index
        @user = User.find_by(id: session[:user_id])
    end
    def show
        @showPost = Post.find(params[:id])
    end
    def delete
        Post.delete(params[:id])
        redirect_to "/user"
    end
end