class Category < ApplicationRecord
    has_many :category_post_join
    has_many :posts, through: :category_post_join
end