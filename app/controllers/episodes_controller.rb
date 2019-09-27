class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = find_me
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.create(permission)
    redirect_to episodes_path(episode)
  end

  def edit
    @episode = find_me
  end

  def update
    @episode = find_me.update(permission)
    redirect_to episodes_path
  end

  def destroy
    episode = find_me
    Episode.delete(episode)
  end


  private

  def find_me
    Episode.find(params[:id])
  end


  def permission
    params.require(:episodes).permit(:date, :number)
  end

end
