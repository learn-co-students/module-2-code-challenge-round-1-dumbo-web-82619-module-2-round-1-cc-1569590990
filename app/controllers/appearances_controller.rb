class AppearancesController < ApplicationController
  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @all_the_guests = Guests.all
    @all_the_episodes = Episodes.all
    @appearance = Appearance.create(params.require(:appearance).permit(:guest_id, :episode_id, :rating))
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
