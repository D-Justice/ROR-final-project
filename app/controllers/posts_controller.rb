class PostsController < ApplicationController
    def create
        @post = Post.create(post_params)
        @category = Category.find_by(category: params[:post][:category])
         if @category
            @post.categories << @category
         else
            @category = Category.create(category: params[:post][:category])
            @post.categories << @category
         end
        @post.user_id = session[:user_id]
        @post.save
        redirect_to user_path(@post.id)
    end

    def index
        @categories = Category.all
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

    private

    def post_params
        params.require(:post).permit(:title, :content, :user_id)
    end
end