require 'bcrypt'
class User < ActiveRecord::Base
    include BCrypt
    has_secure_password
    has_many :comments
    has_many :posts
    has_many :posts, through: :comments
    validates :userName, presence: true, uniqueness: {message: "already in use"}
    validates :firstName, presence: true
    validates :lastName, presence: true
    validates :email, presence: true, uniqueness: {message: "already in use"}, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :password, confirmation: true
    validates :password_confirmation, presence: true
    
end