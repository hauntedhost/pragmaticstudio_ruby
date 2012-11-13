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

def hr
	"--------------------------------"
end

players = []
players.push Player.new("moe", 100)
players.push Player.new("larry", 60)
players.push Player.new("curly", 125)

puts hr
puts "there are #{players.size} players in the game:"

players.each do |player|
	puts player
end

puts hr
puts "health commissioner report:"
players.each do |player|
	puts player.health
end

puts hr
puts "game begin:"
players.each do |player|
	player.w00t
	player.w00t
	player.blam
	puts player
end

puts hr
puts players[1].health
players[1].name = "lawrence"
puts players[1].name
puts players[1].score
puts players[1]
