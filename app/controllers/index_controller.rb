class IndexController < ApplicationController
    def all
        @post = Post.all
    end
end