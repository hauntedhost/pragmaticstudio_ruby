require_relative "player"
require_relative "game"

#players = []
#players.push Player.new("moe", 180)
#players.push Player.new("larry", 60)
#players.push Player.new("curly", 125)

knuckleheads = Game.new("knuckleheads")
#players.each do |player|
#	knuckleheads.add_player(player)
#end

knuckleheads.load_players(ARGV.shift || "players.csv")

loop do
	puts "\nHow many rounds? ('quit to exit)"
	response = gets.chomp.downcase

	case response
	when /^\d+$/
		knuckleheads.play(response.to_i)
	when "quit", "q", "exit"
		knuckleheads.print_stats
		knuckleheads.save_high_scores
		break
	else
		puts "please enter a number or 'quit'"
	end
end

#chipmunks = Game.new("chipmunks")
#chipmunks.add_player(Player.new("alvin", 25))
#chipmunks.add_player(Player.new("simon", 155))
#chipmunks.add_player(Player.new("theodore", 85))
#chipmunks.play(20) do
#	chipmunks.total_points >= 2000
#end
#chipmunks.print_stats
