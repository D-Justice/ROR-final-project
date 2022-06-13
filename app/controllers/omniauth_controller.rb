class OmniauthController < ApplicationController
    def create
      puts(auth)
      @user = User.find_by(email: auth['info']['email'])
      if @user.nil?
        name = auth['info']['name']
        if name.nil?
          name = "External User"
        end
        
        @user = User.create(
          userName: auth['info']['nickname'],
          firstName: name,
          lastName: name,
          email: auth['info']['email'],
          image: auth['info']['image'],
          password: auth['credentials']['token']
        )
        @user.save
      end
      session[:user_id] = @user.id
      redirect_to home_index_path
    end
  
    private
  
    def auth
      request.env['omniauth.auth']
    end
  end