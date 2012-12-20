require_relative "movie"
require_relative "playlist"

movie2 = Movie.new("ghostbusters", 9)
movie3 = Movie.new("goldfinger", 7)
movie1 = Movie.new("goonies", 10)

movies = [movie2, movie3, movie1]
#puts movies.sort_by { |movie| movie.rank }.reverse
#puts movies.sort

playlist1 = Playlist.new("Kermit")

movies.each do |movie|
	playlist1.add_movie(movie)
end

loop do
	puts "\nhow many viewings? ('[q]uit' to exit)."
	answer = gets.chomp.downcase
	case answer
	when /^\d+$/
		puts "\nenjoy your #{answer} viewings"
		playlist1.play(answer.to_i)
	when "quit", "q", "exit"
		playlist1.print_stats
		break
	else
		puts "\nplease enter a number or [q]uit."
	end
end

