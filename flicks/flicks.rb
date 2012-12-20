require_relative "movie"
require_relative "playlist"

playlist = Playlist.new("Kermit")
playlist.load(ARGV.shift || "movies.csv")

loop do
	puts "\nhow many viewings? ('[q]uit' to exit)."
	answer = gets.chomp.downcase
	case answer
	when /^\d+$/
		puts "\nenjoy your #{answer} viewings"
		playlist.play(answer.to_i)
	when "quit", "q", "exit"
		playlist.print_stats
		break
	else
		puts "\nplease enter a number or [q]uit."
	end
end

playlist.save