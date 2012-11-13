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
end

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

players = []
players.push Player.new("moe", 100)
players.push Player.new("larry", 60)
players.push Player.new("curly", 125)

knuckleheads = Game.new("knuckleheads")
players.each do |player|
	knuckleheads.add_player(player)
end
knuckleheads.play

chipmunks = Game.new("chipmunks")
chipmunks.add_player(Player.new("alvin", 25))
chipmunks.add_player(Player.new("simon", 55))
chipmunks.add_player(Player.new("theodore", 85))
chipmunks.play
