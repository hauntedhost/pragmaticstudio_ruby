require_relative "player"

class Game
	attr_reader :title
	attr_reader :players

	def initialize(title)
		@title = title.capitalize
		@players = [] 
	end

	def add_player(player)
		@players.push player
	end
	
	def play
		puts "there are #{@players.size} players in the game:".capitalize
		@players.each do |player|
			puts player
			player.w00t
			player.w00t
			player.blam
			puts player
		end
	end
end
