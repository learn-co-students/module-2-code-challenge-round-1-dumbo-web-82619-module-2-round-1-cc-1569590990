class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @episodes_list = episodes_list
  end

  private

  def guest_appearances
    Appearance.all.select do |appearance|
      appearance.guest_id == Guest.find(params[:id]).id
    end
  end

  def episodes_list
    guest_appearances.map do |appearance|
      Episode.find(appearance.episode_id)
    end
  end
end
