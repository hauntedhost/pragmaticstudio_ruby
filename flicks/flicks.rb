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

playlist1.play(3)
playlist1.print_stats

#playlist2 = Playlist.new("Fozzie")
#playlist2.add_movie(movie3)
#movie4 = Movie.new("gremlins", 15)
#playlist2.add_movie(movie4)
#playlist2.play

