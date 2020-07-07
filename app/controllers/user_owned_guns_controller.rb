class UserOwnedGunsController < ApplicationController

    def show
        # byebug
        user_owned_gun = UserOwnedGun.where(user_id: params[:id])
        render json: user_owned_gun
    end

    # def getUserGuns
    #     user = User.all.find(params[:id])
    #     render json: user.user_owned_guns.to_json(:include => {
    #         :guns => { 
    #             :except => [:created_at, :updated_at]
    #         }
    #     })
    # end 
end
