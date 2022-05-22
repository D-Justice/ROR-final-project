require 'bcrypt'
class User < ActiveRecord::Base
    include BCrypt
    has_many :posts, through: :comments
    has_many :posts
    has_many :comments
    validates :userName, presence: true, uniqueness: {message: "already in use"}
    validates :firstName, presence: true
    validates :lastName, presence: true
    validates :email, presence: true, uniqueness: {message: "already in use"}, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :password_confirmation, presence: {message: "must be more than 6 characters"}
    validates :password, :presence => true,
                       :confirmation => true,
                       :length => {:within => 6..40},
                       :on => :create
end