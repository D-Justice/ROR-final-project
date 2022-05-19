class Comment < ApplicationRecord
    has_one :user, through: :comments_user_post_tables
    has_one :post, through: :comments_user_post_tables
end