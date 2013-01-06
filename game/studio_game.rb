require_relative "player"
require_relative 'clumsy_player'
require_relative 'berserk_player'
require_relative "game"

knuckleheads = Game.new("knuckleheads")
knuckleheads.load_players(ARGV.shift || "players.csv")

klutz = ClumsyPlayer.new("klutz", 105, 10)
knuckleheads.add_player(klutz)

berserker = BerserkPlayer.new("berserker", 50)
knuckleheads.add_player(berserker)

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
