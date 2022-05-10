class PostsController < ApplicationController

    def create
        @post = Post.new
        @post.title = params[:post][:title]
        @post.content = params[:post][:content]
        @post.save
        redirect_to "/home"
    end
end