class AppearancesController < ApplicationController
  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(params.require(:appearance).permit(:guest_id, :episode_id)
  redirect_to appearance_path(@appearance)
  end
  
end
