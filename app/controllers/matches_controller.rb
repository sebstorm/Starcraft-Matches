class MatchesController < ApplicationController

  def index

    matches = Match.all

    render :json => matches

  end

  def get_player

    player = Player.find_by(:id => params[:player])

    matches = Match.where("winner_id = " + player.id.to_s + " OR loser_id = " + player.id.to_s)

    render :json => matches
  end
end
