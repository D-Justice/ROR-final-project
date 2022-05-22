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
    validates :password, :presence => true,
                       :length => {:within => 4..40},
                       :on => :create
devise :database_authenticatable, :registerable,
:recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:github]

    def self.from_omniauth(access_token)
        user = User.where(email: access_token.info.email).first
        unless user
        user = User.create(
            email: access_token.info.email,
            password: Devise.friendly_token[0,20]
        )
    end
    user.userName = access_token.info.name
    user.image = access_token.info.image
    user.uid = access_token.uid
    user.provider = access_token.provider
    user.save
end
end