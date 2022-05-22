class CommentsController < ApplicationController
    before_action 
    def create
        @comment = Comment.new(comment: params[:comment][:comment], post_id: params[:comment][:pageId], user_id: session[:user_id])
        @comment.save
        if params[:user_id]
            redirect_to user_post_path(@comment.post_id)
        else
            redirect_to params[:comment][:url]
        end
    end
    def delete
        Comment.delete(params[:id])
        redirect_to params[:url]
        
    end
    def index
    end
end