require_relative "treasure_trove"

class Player
	attr_accessor :name
	attr_reader :health

	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
		@found_treasures = Hash.new(0)
	end

	def to_csv
		"#{@title},#{@rank}"
	end

	def self.from_csv(line)
		name, health = line.split(',')
		Player.new(name, Integer(health))
		# or simply: new(name, Integer(health))
	end

	def each_found_treasure
		@found_treasures.each do |name, points|
			yield Treasure.new(name, points)
		end	
	end

	def to_s
		# "I'm #{@name} with a health of #{@health} and a score of #{score}"
		"I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}."
	end

	def print_status
		puts "#{@name} (#{@health})" 
	end

	def strong?
		@health > 100
	end

	def w00t
		@health += 15
		puts "#{@name} got w00ted!"
	end

	def blam
		@health -= 10
		puts "#{@name} got blammed!"
	end

	def score
		@health + points
	end

	def <=>(other_player)
		other_player.score <=> score
	end

	def found_treasure(treasure)
		@found_treasures[treasure.name] += treasure.points
		puts "#{@name} found a #{treasure.name} worth #{treasure.points}."
		puts "#{@name}'s treasures: #{@found_treasures}."
	end

	def points
		@found_treasures.values.reduce(0, :+)
	end
end
