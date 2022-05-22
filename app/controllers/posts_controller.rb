class PostsController < ApplicationController
    def create
        @post = Post.new
        @post.title = params[:post][:title]
        @post.content = params[:post][:content]
        @post.user_id = session[:user_id]
        @post.save
        redirect_to user_path(@post.id)
    end

    def index
        if params[:user_id]
            @userPosts = Post.where(user_id: params[:user_id])
        else
            @posts = Post.all.order_by_latest
        end
    end
    def show
        if params[:user_id]
            @isUserPost = true
        end
            @showPost = Post.find(params[:id])
            @author = User.find_by(id: @showPost.user_id)
            @pageId = params[:id]
        
    end
end