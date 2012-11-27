require_relative "player"
require_relative "game"

players = []
players.push Player.new("moe", 180)
players.push Player.new("larry", 60)
players.push Player.new("curly", 125)

knuckleheads = Game.new("knuckleheads")
players.each do |player|
	knuckleheads.add_player(player)
end
knuckleheads.play(3)
knuckleheads.print_stats

chipmunks = Game.new("chipmunks")
chipmunks.add_player(Player.new("alvin", 25))
chipmunks.add_player(Player.new("simon", 155))
chipmunks.add_player(Player.new("theodore", 85))
chipmunks.play(2)
chipmunks.print_stats
