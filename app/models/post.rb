class Post < ApplicationRecord
    has_many :users, through: :comments
    has_many :users
    has_many :comments
end