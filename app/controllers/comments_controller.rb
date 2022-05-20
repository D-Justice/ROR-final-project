class CommentsController < ApplicationController

    def create
        @post = params[:post]
        @comment = Comment.new(comment: params[:comment])
        @comment.save
        redirect_to '/posts'
    end

    def index
    end
end