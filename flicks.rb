def weekday
	current_time = Time.new
	today = current_time.strftime("%A")
end

def movie_listing(title, rank = title.length)
	"#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}." 
end

# puts "mikey loves goonies"
# puts "mikey's favorite movie is goonies"

# movie = "goonies"
# puts "mikey's favorite movies is #{movie}"

# rank = 10
# puts "#{movie} has a \trank of #{rank * 2}"

# movie = "ghostbusters"
# rank = 9
# title = "#{movie.capitalize.ljust(30, ".")}#{rank}"
# puts title 

puts movie_listing("goonies", 5)

a_title = "goldfinger"
puts movie_listing(a_title)

