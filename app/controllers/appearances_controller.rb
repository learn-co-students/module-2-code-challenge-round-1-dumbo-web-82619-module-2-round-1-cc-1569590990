class AppearancesController < ApplicationController

    def index 
       @appeances = Appearance.all
    end

    def new     
       @appearance = Appearance.new

    end

    def create
        @appearance = Appearance.create(sore)
        if @appearance.valid?
            redirect.to epidsode_path(params[:id])
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end
    
    private
    def doko
    Appearance.find_by(params[:id])
    end

    def sore
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end


end