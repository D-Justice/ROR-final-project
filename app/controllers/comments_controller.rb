class CommentsController < ApplicationController
    before_action 
    def create
        @comment = Comment.new(comment: params[:comment][:comment], post_id: params[:comment][:test])
        @comment.save
        redirect_to '/posts'
    end

    def index
    end
end