class Post < ActiveRecord::Base

    def all
        @post = Post.all
    end
end