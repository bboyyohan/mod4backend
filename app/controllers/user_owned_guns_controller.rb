class UserOwnedGunsController < ApplicationController

    def index
        render json: UserOwnedGun.all
    end 
    
    def show
        # byebug
        user_owned_gun = UserOwnedGun.find(params[:id])
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
    def destroy
        UserOwnedGun.destroy(params[:id])
    
    end 
end
