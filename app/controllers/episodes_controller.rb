class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
    @guests = Guest.all
  end

  def show
    @episode = Episode.find(params[:id])
  end
end
