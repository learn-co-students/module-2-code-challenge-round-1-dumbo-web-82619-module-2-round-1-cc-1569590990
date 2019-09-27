class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])

    @all_appearances = @episode.appearances

    @all_guests_arr = @all_appearances.map {|appearance| appearance.guest}
  end 



end
