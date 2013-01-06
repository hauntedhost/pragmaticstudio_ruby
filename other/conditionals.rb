require_relative "movie"

movie = Movie.new("godfather", 9)

# puts "hit" if movie.rank >= 10
# puts "flop" if movie.rank < 10

if movie.rank >= 10
	puts "hit"
else
	puts "flop"
end

