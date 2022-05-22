class Post < ApplicationRecord
    has_many :users, through: :comments
    has_many :users
    has_many :comments
    scope :order_by_latest, -> {order(created_at: :asc)}

end