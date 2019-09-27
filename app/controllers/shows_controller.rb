class ShowsController < ApplicationController

def new

 # @shows = Show.create (guest_id: @guest.id, episode_id: @episode.id)
 redirect_to episodes_path(@episode)
end


end
