require_relative "movie"
require_relative "waldorf_and_statler"
require_relative "snack_bar"

class Playlist
	def initialize(name)
		@name = name
		@movies = [] 
	end

	def load(from_file)
		File.readlines(from_file).each do |line|
			add_movie(Movie.from_csv(line))
		end
	end

	def save(to_file="movie_rankings.csv")
		File.open(to_file, "w") do |file|
			@movies.sort.each do |movie|
				file.puts movie.to_csv
			end
		end
	end

	def add_movie(movie)
		@movies.push movie
	end

	def play(viewings)
		puts "#{@name}'s playlist:"

		puts @movies.sort

		snacks = SnackBar::SNACKS
		puts "\nthere are #{snacks.size} snacks available in snack bar."
		snacks.each do |snack|
			puts "#{snack.name} has #{snack.carbs} carbs."
		end

		1.upto(viewings) do |count|
			puts "\nViewing #{count}:"
			@movies.sort.each do |movie|
				WaldorfAndStatler.review(movie)
				snack = SnackBar.random
				movie.ate_snack(snack)
				puts movie
			end
		end
	end

	def total_carbs_consumed
		@movies.reduce(0) do |sum, movie|
			sum + movie.carbs_consumed
		end
	end

	def print_stats
		puts "\n#{@name}'s stats:"

		puts "#{total_carbs_consumed} total carbs consumed."
		@movies.sort.each do |movie|
			puts "\n#{movie.title}'s snack totals:"

			# use custom iterator "each_snack" to loop through snack hash
			movie.each_snack do	|snack|
				puts "#{snack.carbs} total #{snack.name} carbs"
			end

			# this is how i would do the same thing above without the iterator
			# movie.snack_carbs.each do |name, carbs|
			#	puts "#{carbs} total #{name} carbs"
			# end

			puts "#{movie.carbs_consumed} grand total carbs."
		end
		
		hits, flops = @movies.partition { |movie| movie.hit? }

		puts "\nhits:"
		puts hits.sort

		puts "\nflops:"
		puts flops.sort

	end

end


