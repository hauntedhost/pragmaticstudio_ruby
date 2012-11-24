class Movie
	attr_accessor :title
	attr_reader :rank

	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank
	end

	def title=(new_title)
		@title = new_title.capitalize
	end

	def hit?
		@rank >= 10
	end

	def status
		hit? ? "hit" : "flop"
	end

	def thumbs_up
		@rank += 1
		puts "#{@title} just got a new thumbs up. ^___^"
	end

	def thumbs_down
		@rank -= 1
		puts "#{@title} just got a new thumbs down. ;____;"
	end
	
	def to_s
		"#{@title} has a rank of #{@rank}."
	end
end

if __FILE__ == $0
	movie = Movie.new("Goonies", 100)
	puts movie.title
	puts movie.rank

	movie.thumbs_up
	movie.thumbs_down
	puts movie.rank

	puts movie
end
