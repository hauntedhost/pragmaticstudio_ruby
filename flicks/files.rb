require_relative 'movie'

movies = Array.new
File.readlines("movies.csv").each do |line|
	title, rank = line.split(',')
	movie = Movie.new(title, rank.to_i)
	puts movie
	movies << movie
end

File.open("movies_rankings.csv", "w") do |file|
	movies.sort.each do |movie|
		file.puts "#{movie.title},#{movie.rank}"
	end
end