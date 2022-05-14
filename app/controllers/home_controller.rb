class HomeController < ApplicationController
    def index
        if logged_in?
            @logoutButton = true
        else
            @logoutButton = false
        end
        return @logoutButton
    end

    def _toPosts
        redirect_to '/posts'
    end
end