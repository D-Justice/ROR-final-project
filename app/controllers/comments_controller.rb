class CommentsController < ApplicationController
    
    def create
        @comment = Comment.new(comment: params[:comment][:comment], post_id: params[:comment][:pageId], user_id: session[:user_id])
        @comment.save
        redirect_to params[:comment][:url]
    end
    def delete
        Comment.delete(params[:id])
        redirect_to params[:url]
        
    end
    def index
    end
end