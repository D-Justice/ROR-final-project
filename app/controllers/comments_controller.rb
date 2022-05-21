class CommentsController < ApplicationController
    before_action 
    def create
        @comment = Comment.new(comment: params[:comment][:comment], post_id: params[:comment][:test], user_id: session[:user_id])
        @comment.save
        redirect_to post_path(@comment.post_id)
    end

    def index
    end
end