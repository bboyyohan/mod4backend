class Api::V1::AuthController < ApplicationController

    def create 
        # byebug
        user = User.find_by(username: params['username'], password_digest: params['password'])
        
        if user 
            render json: {message: "log in", user_guns: user.guns, user_data: user, user_owned_guns: user.user_owned_guns, error: false}
        else
            render json: {message: 'You need to be better', error: true}
        end
    end

end