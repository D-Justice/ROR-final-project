class Post < ApplicationRecord
    has_many :comments
    has_many :users
    has_many :users, through: :comments
    has_many :category_post_join
    has_many :categories, through: :category_post_join

    scope :order_by_latest, -> {order(created_at: :asc)}

end