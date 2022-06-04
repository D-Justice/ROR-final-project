require 'bcrypt'
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :omniauthable, :omniauth_providers => [:facebook]
    has_many :posts, through: :comments
    has_many :posts
    has_many :comments
    validates :userName, presence: true, uniqueness: {message: "already in use"}
    validates :firstName, presence: true
    validates :lastName, presence: true
    validates :email, presence: true, uniqueness: {message: "already in use"}, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :password, :presence => true,
                       :confirmation => true,
                       :length => {:within => 6..40},
                       :on => :create
    def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
    end
  end
end