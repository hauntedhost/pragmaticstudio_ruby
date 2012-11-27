class Player
	attr_accessor :name
	attr_reader :health

	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end

	def to_s
		"I'm #{@name} with a health of #{@health} and a score of #{score}"
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
		@health + @name.length
	end

	def <=>(other_player)
		other_player.score <=> score
	end
end