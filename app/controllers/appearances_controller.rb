class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end

    def new 
        @guests = Guest.all
        @episodes = Episode.all
        @appearance = Appearance.new 
    end

    def create 
        # @episode = Episode.find(params[:id])
        @appearance = Appearance.create(params.require(:appearance).permit(:guest_id, :episode_id, :guest_rating))
        redirect_to episode_path(@appearance.episode)
    end

    def show 
        @episode = Episode.find(params[:id])
        @appearance = Appearance.find(params[:id])
    end


end
