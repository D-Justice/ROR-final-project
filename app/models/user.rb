class User < ActiveRecord::Base
    has_many :posts, through: :comments
    has_many :posts
    has_many :comments
    validates :userName, presence: true
    validates :firstName, presence: true
    validates :lastName, presence: true
    validates :email, presence: true
    validates :password, presence: true
end