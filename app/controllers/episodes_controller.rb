class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @guests_list = guests_list
  end

  private

  def episode_appearances
    Appearance.all.select do |appearance|
      appearance.episode_id == Episode.find(params[:id]).id
    end
  end

  def guests_list
    episode_appearances.map do |appearance|
      Guest.find(appearance.guest_id)
    end
  end
end
