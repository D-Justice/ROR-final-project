class Post < ApplicationRecord
    belongs_to :user, optional: true
    has_many :comments, through: :comments_user_post_tables
end