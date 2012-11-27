require_relative "player"
require_relative "die"
require_relative "game_turn"

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

	def print_stats
		strong_players, wimpy_players = @players.partition {|player| player.strong? }

		puts "\n#{@title} statistics:"
		
		puts "\n#{strong_players.size} strong players:"
		strong_players.each {|player| player.print_status }

		puts "\n#{wimpy_players.size} wimply players:"
		wimpy_players.each {|player| player.print_status }

		puts "\n#{@title} high scores:"
		@players.sort.each do |player| 
			print player.name.ljust(20, ".")
			puts player.score
		end
	end

	def play(rounds)
		puts "\nthere are #{@players.size} players in this game:".capitalize
		players.each {|player| puts player.name }

		1.upto(rounds) do |round|
			puts "\nround #{round}:"
			@players.each do |player|
				GameTurn.take_turn(player)	
				puts player
			end
		end
	end
end
