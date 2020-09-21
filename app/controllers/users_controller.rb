class UsersController < ApplicationController
    before_action :authorized, only: [:auto_login]

#register
    def create
      byebug
        @user = User.create(userParams)
        if @user.valid?
          token = encode_token({user_id: @user.id})
          render json: {user: @user, token: token}
        else
          render json: {error: "Invalid username or password"}
        end
      end
    
#logging in
    def login
            @user = User.find_by(username: params[:username])
        
            if @user && @user.authenticate(params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}
            else
            render json: {error: "Invalid username or password"}
            end
     end

     def userParams 
        params.permit(:username, :password, :type)
     end
end
