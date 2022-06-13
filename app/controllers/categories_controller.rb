class CategoriesController < ApplicationController
    def show
        @showPosts = Category.find(params[:id])
        
        @categories = Category.all
    end
end