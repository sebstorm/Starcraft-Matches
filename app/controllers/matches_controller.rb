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

  def get_faction

    matches = Match.where(" winner_faction = ? OR loser_faction = ?",  params[:faction], params[:faction])
    percentage = percentageMaker(params[:faction], matches)
    render :json => {
    	:win_percentage => percentage,
    		:matches => matches
    		
    	}
  end
  private
  def percentageMaker(faction,matches_array)
		

		wins = 0
		losses = 0

		matches_array.each do |match|
			if match.winner_faction == faction
				wins = wins + 1

			else
				losses = losses + 1
			end
		end
		p wins
		p losses
		percentage = (wins.to_f / matches_array.count.to_f) * 100
		p percentage
		p matches_array.count

		return percentage.to_s + "%"
	end
end
