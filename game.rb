require_relative "player"
require_relative "die"

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
			die = Die.new
			case die.roll
			when 1..2
				player.blam
			when 3..4
				puts "#{player.name} was skipped"
			else
				player.w00t
			end
			puts player
			#player.w00t
			#puts player
			#player.w00t
			#player.blam
			#puts player
		end
	end
end
