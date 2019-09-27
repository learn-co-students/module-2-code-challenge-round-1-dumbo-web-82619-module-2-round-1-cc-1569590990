class ListsController < ApplicationController

    def new 
        @list = List.new 
    end 

    def create 
        @list = List.create(params.require(:list).permit(:guest_id, :episode_id, :rate))
        redirect_to list_path(@list)
    end 

    def index 
        @lists = List.all 
    end 

    def show
        @list = List.find(params[:id])
    end 







end
