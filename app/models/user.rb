class User < ApplicationRecord
    has_many :posts, through: :comments
    has_many :posts
    has_many :comments
end