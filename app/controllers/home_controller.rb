class HomeController < ApplicationController
    def index
        @secret = ENV['GITHUB_SECRET']
    end

    def _toPosts
        redirect_to '/posts'
    end
end