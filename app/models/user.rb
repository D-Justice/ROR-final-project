class User < ActiveRecord::Base
    has_many :posts, foreign_key: :id
end