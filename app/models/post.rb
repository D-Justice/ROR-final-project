class Post < ApplicationRecord
    belongs_to :user, optional: true
    has_many :comments, foreign_key: :comment_id
end