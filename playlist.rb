require_relative "movie"

class Playlist
	def initialize(name)
		@name = name
		@movies = [] 
	end

	def add_movie(movie)
		@movies.push movie
	end

	def play(number_rolled)
		puts "#{@name}'s playlist:"
		puts @movies
		@movies.each do |movie|
			if number_rolled < 5
				puts "#{movie.title} was skipped."
			else
				movie.thumbs_up
				puts "#{movie.title} got a thumbs up."
			end
		end
	end
end
