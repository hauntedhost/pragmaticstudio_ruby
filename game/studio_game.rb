require_relative "player"
require_relative "game"

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
