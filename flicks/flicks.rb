require_relative 'movie'
require_relative 'playlist'
require_relative 'movie3d'

playlist = Playlist.new("Kermit")
playlist.load(ARGV.shift || "movies.csv")
movie3d = Movie3D.new('glee', 5, 12)
playlist.add_movie(movie3d)

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