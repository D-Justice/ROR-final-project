class CommentsController < ApplicationController
    
    def create
       @comment = Comment.new(create_comment)
       @comment.user_id = session[:user_id]
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

    private

    def create_comment
        params.require(:comment).permit(:comment, :post_id)

    end
end