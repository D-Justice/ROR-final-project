class PostsController < ApplicationController

    def create
        @post = Post.new
        @post.title = params[:post][:title]
        @post.content = params[:post][:content]
        @post.user_id = session[:user_id]
        @post.save
        redirect_to "/posts"
    end

    def index
        @posts = Post.all
    end
end