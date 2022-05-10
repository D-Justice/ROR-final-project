class HomeController < ApplicationController
    def index
    end

    def _toPosts
        redirect_to '/posts'
    end
end