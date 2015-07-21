module MatchesHelper
	def self.percentageMaker(faction,matches_array)
		

		wins = 0
		losses = 0

		matches_array.each do |match|
			if match.winner_faction == faction
				wins = wins + 1
			else
				losses = losses + 1
			end
		end

		percentage = matches_array.length/ wins

		return pecentages
	end
end
