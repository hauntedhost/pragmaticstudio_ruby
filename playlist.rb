require_relative "movie"

class Playlist
	def initialize(name)
		@name = name
		@movies = [] 
	end

	def add_movie(movie)
		@movies.push movie
	end

	def roll_die
		rand(1..6)	
	end

	def play
		puts "#{@name}'s playlist:"
		puts @movies
		@movies.each do |movie|
			number_rolled = roll_die
			if number_rolled < 3
				movie.thumbs_down
				puts "#{movie.title} got a thumbs down."			
			elsif number_rolled < 5
				puts "#{movie.title} was skipped."
			else
				movie.thumbs_up
				puts "#{movie.title} got a thumbs up."
			end
		end
	end
end
