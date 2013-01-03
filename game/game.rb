require_relative "player"
require_relative "die"
require_relative "game_turn"
require_relative "treasure_trove"

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

	def total_points
		@players.reduce(0) { |sum, player| sum + player.points }
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

		@players.sort.each do |player|
			puts "\n#{player.name}'s point totals:"
			player.each_found_treasure do |treasure|
				puts "#{treasure.points} total #{treasure.name} points."
			end
			puts "#{player.points} grand total points."
		end

		puts "\n#{total_points} total points from treasures found."

	end

	def play(rounds)
		treasures = TreasureTrove::TREASURES
		puts "there are #{treasures.size} treasures to be found:"
		treasures.each do |treasure|
			puts "a #{treasure.name} is worth #{treasure.points} points"		
		end

		puts "\nthere are #{@players.size} players in this game:".capitalize
		players.each {|player| puts player.name }

		1.upto(rounds) do |round|
			if block_given?
				break if yield
			end
			puts "\nround #{round}:"
			@players.each do |player|
				GameTurn.take_turn(player)	
				#puts player
			end
		end
	end
end
