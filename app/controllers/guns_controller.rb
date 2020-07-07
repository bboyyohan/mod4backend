class GunsController < ApplicationController

    def index
        render json: Gun.all
    end

    # def destroy
end
